tests
testReadExistingFile
	self createSomeCommits.
	self deny: (modified root resolve: 'file1') exists.
	self assert: (workingCopy root resolve: 'file1') exists.
	self assert: (fs root resolve: 'file1') readStream contents asString = 'content'