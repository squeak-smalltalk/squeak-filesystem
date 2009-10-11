tests
testCommaReplacesExtension
	| path result |
	path := FSPath with: 'plonk.griffle'.
	result := path, 'nurp'.
	self assert: result asString = '[plonk.nurp]'