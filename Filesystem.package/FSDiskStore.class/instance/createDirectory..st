public
createDirectory: path
	| parent encodedPathString pathString result |
	pathString := self stringFromPath: path.
	encodedPathString := Primitives encode: pathString.
	result := Primitives createDirectory: encodedPathString.
	result
		ifNil: [ 
			parent := path parent.
			(self exists: path)
				ifTrue: [ 
					(self isFile: path)
						ifTrue: [ self fileExists: path ]
						ifFalse: [ self directoryExists: path ] ].
			(self isDirectory: parent)
				ifFalse: [ ^ self directoryDoesNotExist: parent ].
			self primitiveFailed ].
	^ self