public
delete: anObject 
	| path pathString encodedPathString |
	path := self resolve: anObject.
	pathString := self stringFromPath: path.
	encodedPathString := Primitives encode: pathString.
	(self isDirectory: path) 
		ifTrue: [ Primitives deleteDirectory: encodedPathString ]
		ifFalse: [
			StandardFileStream 
				retryWithGC: [ Primitives deleteFile: encodedPathString ]
				until: [ :result | result notNil ]
				forFileNamed: pathString ]