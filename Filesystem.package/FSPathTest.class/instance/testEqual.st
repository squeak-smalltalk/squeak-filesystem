tests
testEqual
	| a b |
	a := FSPath with: 'plonk'.
	b := FSPath with: 'plonk'.
	self deny: a == b.
	self assert: a = b.