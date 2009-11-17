public
childrenAt: anObject 
	| path |
	path := self resolve: anObject.
	^ Array streamContents: 
		[ :out | 
		self 
			directoryAt: path
			ifAbsent: [ self directoryDoesNotExist: path ]
			nodesDo: [ :entry | out nextPut: (self referenceTo: path / entry first) ] ]