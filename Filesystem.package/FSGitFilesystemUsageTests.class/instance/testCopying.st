commit tests
testCopying
	| ref originalContent copyContent |
	self createSomeCommits.
	ref := fs root resolve: 'copy'.
	self deny: ref exists.
	
	(fs root resolve: 'file1') copyTo: ref.
	self commit: 'a commit'.
	self assert: ref exists.
	self deny: (modified root resolve: 'copy') exists.
	self deny: (modified root resolve: 'file1') exists.
	self assert: (workingCopy root resolve: 'file1') exists.
	self assert: (workingCopy root resolve: 'copy') exists.
	originalContent := (fs root resolve: 'file1') readStream contents.
	copyContent := ref readStream contents.
	self assert: originalContent = copyContent.
	self assert: copyContent asString = 'content'.
	