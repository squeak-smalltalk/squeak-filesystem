tests
testInitializeOnDiskFilesystem
	reference := FSDiskFilesystem current working resolve: 'newRepo'.
	repository := GitRepository basicNew initializeOn: reference.
	self assert: (repository baseDir filesystem isKindOf: FSDiskFilesystem).
	self assert: repository baseDir = (reference / '.git')