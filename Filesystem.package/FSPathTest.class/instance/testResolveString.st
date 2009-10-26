tests
testResolveString
	| path result |
	path := FSPath with: 'plonk'.
	result := path resolve: 'griffle'.
	self assert: result class = path class.
	self assert: result size = 2.
	self assert: (result at: 1) = 'plonk'.
	self assert: (result at: 2) = 'griffle'.