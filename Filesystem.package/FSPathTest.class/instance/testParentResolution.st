tests
testParentResolution
	| base relative absolute |
	base := '/plonk/pinto' asPath.
	relative := '../griffle/zonk' asPath.
	absolute := base resolve: relative.
	self assert: absolute asString = '/plonk/griffle/zonk'