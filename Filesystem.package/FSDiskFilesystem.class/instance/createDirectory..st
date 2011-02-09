public
createDirectory: anFSPath 
	"Create a directory for the argument path. Raise exceptions FileExists, DirectoryExists, or DirectoryDoesNotExist if the operation fails"
	
	| path pathString encodedPathString result parent |
	path := self resolve: anFSPath.
	pathString := self stringFromPath: path.
	encodedPathString := Primitives encode: pathString.
	result := Primitives createDirectory: encodedPathString.
	result ifNil: [ 
		parent := path parent.
		(self exists: path) ifTrue: [ ^ self nodeExists: path ].
		(self isDirectory: parent) ifFalse: [ ^ self directoryDoesNotExist: parent ].
		self primitiveFailed ]