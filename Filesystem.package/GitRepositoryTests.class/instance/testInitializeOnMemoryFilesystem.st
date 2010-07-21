tests
testInitializeOnMemoryFilesystem
	reference := FSMemoryFilesystem new working resolve: 'newRepo'.
	repository := GitRepository basicNew initializeOn: reference.
	self assert: (repository baseDir filesystem isKindOf: FSMemoryFilesystem).
	self assert: repository baseDir = (reference / '.git')