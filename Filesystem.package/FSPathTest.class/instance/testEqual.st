tests
testEqual
	| a b |
	a := 'plonk' asPath.
	b := 'plonk' asPath.
	self deny: a == b.
	self assert: a = b.