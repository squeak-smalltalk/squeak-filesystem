public
entriesAt: aStringOrAPathOrAReference 

	| path entry |
	path := self resolve: aStringOrAPathOrAReference.
	^ Array streamContents: 
		[ :out | 
		self 
			directoryAt: path
			ifAbsent: [ self signalDirectoryDoesNotExist: path ]
			nodesDo: 
				[ :node | 
				entry := self 
					entryFromNode: node
					atPath: path / (node at: 1).
				out nextPut: entry ] ]