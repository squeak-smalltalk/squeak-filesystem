as yet unclassified
testPeekForFalse
	self contents: #(1 2 3).
	self deny: (stream peekFor: 5)
	