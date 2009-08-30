public
createDirectory: anObject
	| parent path |
	path := self resolve: anObject asPath.
	parent := path parent.
	(self isDirectory: parent) ifFalse: [self createDirectory: parent].
	Primitives createDirectory: (self pathToString: path)