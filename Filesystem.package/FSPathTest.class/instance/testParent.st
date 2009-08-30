tests
testParent
	| path parent |
	path := 'plonk/griffle' asPath.
	parent := path parent.
	self assert: parent class = path class.
	self assert: parent asString = 'plonk'