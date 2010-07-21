running
setUp
	| ref |
	ref := FSMemoryFilesystem new root resolve: 'testRepo'.
	basicRepository := GitRepository on: ref.
	fsRepository := FSGitRepository  on: ref.
	fs := fsRepository head.
	modified := fs instVarNamed: 'modified'.
	workingCopy := fs instVarNamed: 'workingCopy'