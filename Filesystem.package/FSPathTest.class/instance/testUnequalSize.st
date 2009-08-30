tests
testUnequalSize
	| a b |
	a := 'plonk' asPath.
	b := 'plonk/griffle' asPath.
	self deny: a = b.