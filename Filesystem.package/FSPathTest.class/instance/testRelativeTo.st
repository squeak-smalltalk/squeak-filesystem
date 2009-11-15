tests
testRelativeTo
	| parent child relative |
	parent := FSPath / 'griffle'.
	child := FSPath / 'griffle' / 'plonk' / 'nurp'.
	relative := child relativeTo: parent.
	self assert: relative = (FSPath * 'plonk' / 'nurp')