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
				[:node | 
				entry := self 
					entryFromNode: node 
					atPath: path / (node at: 1).
				out nextPut: entry]]