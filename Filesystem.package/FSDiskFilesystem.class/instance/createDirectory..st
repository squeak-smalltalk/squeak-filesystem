public
createDirectory: anObject 
	| path pathString encodedPathString result parent |
	path := self resolve: anObject.
	pathString := self stringFromPath: path.
	encodedPathString := Primitives encode: pathString.
	result := Primitives createDirectory: encodedPathString.
	result ifNil: [ 
		parent := path parent.
		(self exists: path) ifTrue: [ ^ self nodeExists: path ].
		(self isDirectory: parent) ifFalse: [ ^ self directoryDoesNotExist: parent ].
		self primitiveFailed ]