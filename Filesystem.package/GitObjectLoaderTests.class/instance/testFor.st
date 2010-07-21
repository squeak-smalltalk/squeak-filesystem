class-tests
testFor
	| repository loader |
	repository := GitRepository on: FSMemoryFilesystem new root.
	loader := GitObjectLoader for: repository.
	self assert: (loader instVarNamed: 'repository')= repository