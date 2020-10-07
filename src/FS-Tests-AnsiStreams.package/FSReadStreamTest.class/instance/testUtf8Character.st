tests
testUtf8Character

	self contents: 'π [' utf8Encoded.
	stream text.
	self assert: 'π ' equals: (stream upToAll: '[')