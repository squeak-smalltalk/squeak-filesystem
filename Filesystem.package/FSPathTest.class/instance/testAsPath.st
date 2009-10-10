tests
testAsPath
	| a b |
	a := FSPath with: 'plonk'.
	b := a asPath.
	self assert: a == b