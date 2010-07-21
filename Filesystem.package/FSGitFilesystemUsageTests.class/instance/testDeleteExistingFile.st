tests
testDeleteExistingFile
	self createSomeCommits.
	self assert: fs root children size = 2.
	self assert: fs root allChildren size = 4.
	
	fs delete: (fs resolve: 'file1').
	self assert: fs root children size = 1.
	self assert: fs root allChildren size = 3.
	self deny: (fs root resolve: 'file1') exists.
	self assert: (fs root resolve: 'dir1/file2') exists