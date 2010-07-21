tests
testEquals
	| repo2 |
	repo2 := GitRepository on: FSMemoryFilesystem new working.
	self deny: repository = repo2.
	
	repo2 := GitRepository on: repository baseDir.
	self assert: repository = repo2