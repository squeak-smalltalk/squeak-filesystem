public
createDirectory: anObject
	| path name |
	path := self resolve: anObject.
	name := self pathToString: path.
	archive addMember: (ZipDirectoryMember newNamed: name).