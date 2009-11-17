public
createDirectory: anObject
	| parent path result |
	path := self resolve: anObject.
	result := Primitives createDirectory: (self pathToString: path).
	result ifNil:
		[parent := path parent.
		(self exists: path) ifTrue: [^ self nodeExists: path].
		(self isDirectory: parent) ifFalse: [^ self directoryDoesNotExist: parent].
		self primitiveFailed].
