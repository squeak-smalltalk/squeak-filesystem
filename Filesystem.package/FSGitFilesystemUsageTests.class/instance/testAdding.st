commit tests
testAdding
	| ref filename |
	self assert: fs root children isEmpty.
	self assert: workingCopy root children isEmpty.
	self assert: modified root children isEmpty.
	
	filename := 'aFile'.
	ref := fs root resolve: filename.
	self deny: ref exists.
	ref writeStreamDo: [ :stream | stream nextPutAll: 'new file' ].
	self assert: ref exists.
	self assert: (modified root resolve: filename) exists.
	self deny: (workingCopy root resolve: filename) exists.
	
	self commit: 'a commit'.
	self assert: ref exists.
	self deny: (modified root resolve: filename) exists.
	self assert: (workingCopy root resolve: filename) exists