public
childrenAt: anObject 
	| path ref |
	path := self resolve: anObject.
	^ Array streamContents: 
		[ :out | 
		self 
			directoryAt: path
			ifAbsent: [ self invalidDirectory: path ]
			nodesDo: 
				[ :association | 
				ref := self referenceTo: path / association key.
				out nextPut: ref ] ]