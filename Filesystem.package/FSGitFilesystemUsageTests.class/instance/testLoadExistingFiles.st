tests
testLoadExistingFiles
	self createSomeCommits.
	fs := GitFS for: basicRepository.
	fs root children do: [ :child |
		self assert: (#('/file1' '/dir1') includes: child path asString) ].
	fs root allChildren do: [ :child |
		self assert: (#('/' '/file1' '/dir1' '/dir1/file2') includes: child path asString) ]