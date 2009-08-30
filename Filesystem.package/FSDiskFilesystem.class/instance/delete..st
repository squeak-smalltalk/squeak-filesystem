public
delete: anObject
	| path pathString |
	path := self resolve: anObject.
	pathString := self pathToString: path.
	(self isDirectory: path)
		ifTrue: [Primitives deleteDirectory: (self pathToString: path)]
		ifFalse: 
			[StandardFileStream 
				retryWithGC:[Primitives deleteFile: pathString]
				until: [:result | result notNil]
				forFileNamed: pathString]