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
				[ :node | 
				entry := self 
					entryFromNode: node
					atPath: path / (node at: 1).
				out nextPut: entry ] ]