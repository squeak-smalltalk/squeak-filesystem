tests
testWriteStreamDoExists
	| ref s path |
	path := FSPath * 'plonk'.
	filesystem createFile: path.
	ref := filesystem referenceTo: path.
	ref writeStreamDo:
		[:stream |
		s := stream.
		self assert: stream class = FSWriteStream.
		self assert: stream isOpen].
	self deny: s isOpen
		