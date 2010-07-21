tests
testLoadExistingFilesFromRevision
	self createSomeCommits.
	fs := FSGitFilesystem for: basicRepository revision: basicRepository head parents first.
	fs root children do: [ :child |
		self assert: (#('/file1') includes: child path asString) ].
	fs root allChildren do: [ :child |
		self assert: (#('/' '/file1') includes: child path asString) ]