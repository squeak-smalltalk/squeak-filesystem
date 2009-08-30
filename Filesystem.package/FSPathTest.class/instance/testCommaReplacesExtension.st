tests
testCommaReplacesExtension
	| path result |
	path := 'plonk.griffle' asPath.
	result := path, 'nurp'.
	self assert: result asString = 'plonk.nurp'