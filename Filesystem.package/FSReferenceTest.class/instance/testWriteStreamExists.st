tests
testWriteStreamExists
	| ref stream path |
	path := FSPath * 'plonk'.
	filesystem createFile: path.
	ref := filesystem referenceTo: path.
	[stream := ref writeStream.
	self assert: (stream class = FSWriteStream)]
		ensure: [stream ifNotNil: [stream close]]