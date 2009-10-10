tests
testUnequalSize
	| a b |
	a := FSPath with: 'plonk'.
	b := (FSPath with: 'plonk') / 'griffle'.
	self deny: a = b.