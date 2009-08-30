tests
testCommaAddsExtension
	| path result |
	path := 'plonk' asPath.
	result := path, 'griffle'.
	self assert: result asString = 'plonk.griffle'