private
replaceFile: anObject in: aBlock
	| path |
	path := self resolve: anObject.
	^ self 
		entryAt: path parent
		ifPresent: 
			[:dict || old new |
			(self basicIsDirectory: dict) ifFalse: [self fileDoesNotExist: path].
			old := dict at: path basename ifAbsent: [self fileDoesNotExist: path].
			new := aBlock value: old.
			dict at: path basename put: new]
		ifAbsent: [self fileDoesNotExist: path]