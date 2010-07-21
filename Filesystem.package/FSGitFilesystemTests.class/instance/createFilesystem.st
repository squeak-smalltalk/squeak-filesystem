initialize-release
createFilesystem
	^ (FSGitRepository on: (FSMemoryFilesystem new root resolve: 'testRepo.git')) head.