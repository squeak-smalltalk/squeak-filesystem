public
entriesAt: aResolvable
	| path entry aFilesystem |
	path := self resolve: aResolvable.
	aFilesystem := self.
	^ Array
		streamContents: [ :out | 
			store
				directoryAt: path
				ifAbsent: [ store directoryDoesNotExist: path ]
				nodesDo: [ :node | 
					entry := store entryFromNode: node path: path for: aFilesystem.
					out nextPut: entry ] ]