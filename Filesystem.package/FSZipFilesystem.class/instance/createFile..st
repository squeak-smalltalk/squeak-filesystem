private
createFile: aPath 
	archive addString: '' as: (self pathToString: aPath).
	^ ByteArray new