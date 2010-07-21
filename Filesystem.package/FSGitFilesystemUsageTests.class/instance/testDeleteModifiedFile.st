tests
testDeleteModifiedFile
	| ref path map deletions |
	path := 'dir1/file2'.
	map := fs instVarNamed: 'objectMap'.
	deletions := fs instVarNamed: 'deletions'.
	self createSomeCommits.
	"self assert: (map includesKey: FSPath root / path)."
	self assert: deletions isEmpty.
	(fs root resolve: path) writeStreamDo: [ :stream | 
		stream nextPutAll: 'changed it' ].
	
	ref := fs root resolve: path.
	self assert: ref readStream contents asString = 'changed it'.
	self assert: (modified root resolve: path) readStream contents asString = 'changed it'.
	self assert: (workingCopy root resolve: path) readStream contents asString = 'more content'.
	
	ref delete.
	self deny: ref exists.
	self deny: (modified root resolve: path) exists.
	self assert: (workingCopy root resolve: path) exists.
	self deny: (fs root resolve: path) exists.
	self deny: (map includesKey: FSPath root / path).
	self deny: deletions isEmpty.
	self assert: deletions size = 1.
	self assert: (deletions includes: (fs resolve: path))