private
basicCopyTo: aReference
	| in out buffer |
	[in := filesystem readStreamOn: (filesystem resolve: path).
	in ifNil: [filesystem signalFileDoesNotExist: path].
	aReference exists ifTrue: [aReference filesystem signalFileExists: path].
	out := aReference writeStream.
	buffer := ByteArray new: 1024.
	[in atEnd] whileFalse:
		[buffer := in nextInto: buffer.
		out nextPutAll: buffer]]
			ensure:
				[in ifNotNil: [in close].
				out ifNotNil: [out close]]