tests
testIsInitialized
	repository := GitRepository on: (FSMemoryFilesystem new root resolve: 'test.git').
	self deny: repository isInitialized.
	
	repository gitInitialize.
	self assert: repository isInitialized