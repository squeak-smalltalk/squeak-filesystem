tests
testTruncateToEmpty
	stream nextPutAll: #(42 43 44 45 46).
	stream flush.
	stream truncateTo: 0.
	self assert: self contents isEmpty.