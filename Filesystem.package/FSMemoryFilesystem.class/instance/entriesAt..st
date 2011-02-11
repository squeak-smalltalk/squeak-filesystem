public
entriesAt: aStringOrAPathOrAReference 
	| path entry |
	path := self resolve: aStringOrAPathOrAReference.
	^ Array streamContents: 
		[ :out | 
		self 
			directoryAt: path
			ifAbsent: [ self directoryDoesNotExist: path ]
			nodesDo: 
				[ :association | 
				entry := self 
					entryFromNode: association value
					atPath: path / association key.
				out nextPut: entry ] ]