commit tests
testDeleting
	| ref deletions |
	self createSomeCommits.
	deletions := fs instVarNamed: 'deletions'.
	ref := fs root resolve: 'file1'.
	self assert: ref exists.
	self assert: deletions isEmpty.
	
	ref delete.
	self assert: deletions size = 1.
	self deny: ref exists.
	self deny: (modified root resolve: 'file1') exists.
	self assert: (workingCopy root resolve: 'file1') exists.
	
	self commit: 'a commit'.
	self deny: ref exists.
	self assert: deletions isEmpty.
	self deny: (modified root resolve: 'file1') exists.
	self deny: (workingCopy root resolve: 'file1') exists.
	fs root allChildren do: [ :child |
		self assert: (#('/' '/dir1' '/dir1/file2') includes: child path asString) ]