private
createFile: aPath 
	archive 
		addDeflateString: ''
		as: (self stringFromPath: aPath).
	^ ByteArray new