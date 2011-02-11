initialize-release
initializeWithDisk: aString
	| pathString |
	disk := aString.
	pathString := Primitives decode: Primitives imageFile.
	workingDirectoryPath := (pathString first: 1) = disk
		ifTrue: [ (self pathFromString: pathString) parent ]
		ifFalse: [ FSPath root ]