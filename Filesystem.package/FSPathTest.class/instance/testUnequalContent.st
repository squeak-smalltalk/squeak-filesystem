tests
testUnequalContent
	| a b |
	a := FSPath with: 'plonk'.
	b := FSPath with: 'griffle'.
	self deny: a = b.