tests
testUnequalContent
	| a b |
	a := 'plonk' asPath.
	b := 'griffle' asPath.
	self deny: a = b.