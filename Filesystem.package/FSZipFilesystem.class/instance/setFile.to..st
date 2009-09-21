private
setFile: aPath to: bytes 
	| path |
	path := self resolve: aPath.
	self 
		entryAt: path
		ifPresent: [:member | (archive member: member) contents: bytes]
		ifAbsent: 
			[ archive 
				addDeflateString: bytes
				as: (self pathToString: path) ]