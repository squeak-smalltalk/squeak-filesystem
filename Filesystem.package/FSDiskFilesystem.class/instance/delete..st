public
delete: anObject 
	| path pathString |
	path := self resolve: anObject.
	pathString := self stringFromPath: path.
	(self isDirectory: path) 
		ifTrue: [ Primitives deleteDirectory: (self stringFromPath: path) ]
		ifFalse: 
			[ StandardFileStream 
				retryWithGC: [ Primitives deleteFile: pathString ]
				until: [ :result | result notNil ]
				forFileNamed: pathString ]