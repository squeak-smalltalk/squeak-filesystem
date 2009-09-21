private
createFile: aPath 
	archive addDeflateString: '' as: (self pathToString: aPath).
	^ ByteArray new