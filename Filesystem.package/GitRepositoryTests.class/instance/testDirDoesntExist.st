tests
testDirDoesntExist
	repository := GitRepository on: (reference resolve: 'newRepo').
	self deny: repository exists.
	repository gitInitialize.
	self assert: repository exists