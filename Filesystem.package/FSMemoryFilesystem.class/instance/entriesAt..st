public
entriesAt: anObject
	| path entry |
	path := self resolve: anObject.
	^ Array streamContents:
		[:out |
		self
			directoryAt: path
			ifAbsent: [self invalidDirectory: path]
			entriesDo: 
				[:association | 
				entry := self referenceTo: path / association key.
				out nextPut: entry]]