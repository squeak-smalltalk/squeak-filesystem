running
setUp
	| ref |
	ref := FSMemoryFilesystem new root resolve: 'testRepo'.
	basicRepository := GitRepository on: ref.
	fsRepository := GitFSRepository on: ref.
	fs := fsRepository head.
	modified := fs instVarNamed: 'modified'.
	workingCopy := fs instVarNamed: 'workingCopy'