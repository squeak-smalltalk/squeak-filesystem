tests
testParentResolutionWithAbsoluteReference
	| base relative absolute |
	base := (filesystem referenceTo: '/plonk/pinto').
	relative := (FSMemoryFilesystem new referenceTo: '/griffle/zonk').
	absolute := base resolve: relative.
	self assert: absolute filesystem == relative filesystem.
	self assert: (absolute path printWithDelimiter: $/) = '/griffle/zonk'