tests
testWriteStream
	| ref stream |
	ref := filesystem referenceTo: 'plonk'.
	[stream := ref writeStream.
	self assert: (stream respondsTo: #nextPut:)]
		ensure: [stream ifNotNil: [stream close]]