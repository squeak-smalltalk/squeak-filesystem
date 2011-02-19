public
childrenAt: anObject
	| path |
	path := self resolve: anObject.
	^ Array
		streamContents: [ :out | 
			store
				directoryAt: path
				ifAbsent: [ store directoryDoesNotExist: path ]
				nodesDo: [ :entry | out nextPut: path / (store basenameFromEntry: entry) ] ]