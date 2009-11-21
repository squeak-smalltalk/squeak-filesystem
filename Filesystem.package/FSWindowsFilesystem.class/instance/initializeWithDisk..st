initialize-release
initializeWithDisk: aString 
	| pathString |
	disk := aString.
	pathString := Primitives imageFile.
	(pathString first: 1) = disk 
		ifTrue: [ workingDirectory := (self pathFromString: pathString) parent ]
		ifFalse: [ workingDirectory := FSPath root ]