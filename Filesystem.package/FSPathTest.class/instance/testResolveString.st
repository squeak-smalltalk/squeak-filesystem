tests
testResolveString
	"self debug: #testResolveString"
	
	| path resultingPath |
	path := FSPath with: 'plonk'.
	resultingPath := path resolve: 'griffle'.
	self assert: resultingPath class = path class.
	self assert: resultingPath size = 2.
	self assert: (resultingPath at: 1) = 'plonk'.
	self assert: (resultingPath at: 2) = 'griffle'.