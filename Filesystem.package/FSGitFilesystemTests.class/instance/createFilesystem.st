initialize-release
createFilesystem
	^ GitFS for: (GitRepository on: (FSMemoryFilesystem new root resolve: 'testRepo.git')).