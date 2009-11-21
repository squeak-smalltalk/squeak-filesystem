as yet unclassified
testRoots
	| roots |
	roots := FSReference roots.
	self deny: roots isEmpty.
	roots do:
		[:ref |
		self assert: ref class = FSReference.
		self assert: ref path isRoot].
	self assert: (roots collect: [:ea | ea filesystem]) asSet size = roots size.
	