tests
testDirExistsButNotInitialized
	reference := reference resolve: 'newRepo'.
	repository := GitRepository on: reference.
	reference createDirectory.
	self deny: repository exists.
	repository gitInitialize.
	self assert: repository exists