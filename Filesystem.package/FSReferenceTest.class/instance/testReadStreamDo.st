tests stream
testReadStreamDo
	| ref path s |
	path := FSPath * 'plonk'.
	filesystem createFile: path.
	ref := filesystem referenceTo: path.
	ref readStreamDo: 
		[:stream | 
		self assert: stream class = FSReadStream.
		self assert: stream isOpen.
		s := stream].
	self deny: s isOpen
		