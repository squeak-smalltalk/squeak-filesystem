public
entriesAt: anObject
	| path entry |
	path := self resolve: anObject.
	^ Array streamContents:
		[:out |
		self
			directoryAt: path
			ifAbsent: [self invalidDirectory: path]
			nodesDo: 
				[:association | 
				entry := self 
					entryFromNode: association value 
					atPath: path / association key.
				out nextPut: entry]]