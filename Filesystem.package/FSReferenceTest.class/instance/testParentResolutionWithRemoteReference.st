tests
testParentResolutionWithRemoteReference
	| base relative absolute |
	base := (filesystem referenceTo: '/plonk/pinto').
	relative := (FSDiskFilesystem current referenceTo: '../griffle/zonk').
	absolute := base resolve: relative.
	self assert: absolute asString = 'memory:/plonk/griffle/zonk'