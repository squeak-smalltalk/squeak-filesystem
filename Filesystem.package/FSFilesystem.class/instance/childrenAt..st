public
childrenAt: aResolvable
	| path |
	path := self resolve: aResolvable.
	^ Array
		streamContents: [ :out | 
			store
				directoryAt: path
				ifAbsent: [ store directoryDoesNotExist: path ]
				nodesDo: [ :entry | out nextPut: path / (store basenameFromEntry: entry) ] ]