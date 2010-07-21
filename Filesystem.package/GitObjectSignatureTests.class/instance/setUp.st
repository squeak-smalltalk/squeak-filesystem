running
setUp
	repository := GitRepository on: (FSMemoryFilesystem new root resolve: 'test.git').
	repository gitInitialize