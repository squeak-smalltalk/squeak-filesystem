tests
testParent
	| path parent |
	path := (FSPath * 'plonk') / 'griffle'.
	parent := path parent.
	self assert: parent class = path class.
	self assert: parent asString = 'plonk'