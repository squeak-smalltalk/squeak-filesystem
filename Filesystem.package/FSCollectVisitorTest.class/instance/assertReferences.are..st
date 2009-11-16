as yet unclassified
assertReferences: references are: expected
	| strings |
	self assert: references isArray.
	references do: [ :ea | self assert: ea class = FSReference ].
	strings := references collect: [ :ea | ea pathString ].
	self assert: strings = expected