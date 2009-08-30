tests
testAsPath
	| a b |
	a := 'plonk' asPath.
	b := a asPath.
	self assert: a == b