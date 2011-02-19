initialize-release
defaultWorkingDirectory
	| pathString |
	pathString := self primitives decode: self primitives imageFile.
	^ (pathString first: 1) = self disk
		ifTrue: [ (self pathFromString: pathString) parent ]
		ifFalse: [ FSPath root ]