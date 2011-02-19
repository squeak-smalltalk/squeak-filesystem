public
delete: path
	| pathString encodedPathString |
	pathString := self stringFromPath: path.
	encodedPathString := self primitives encode: pathString.
	(self isDirectory: path)
		ifTrue: [ self primitives deleteDirectory: encodedPathString ]
		ifFalse: [ 
			StandardFileStream
				retryWithGC: [ self primitives deleteFile: encodedPathString ]
				until: [ :result | result notNil ]
				forFileNamed: pathString ]