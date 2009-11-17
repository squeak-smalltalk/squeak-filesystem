public
createDirectory: anObject 
	| parent path |
	path := self resolve: anObject.
	parent := path parent.
	self 
		nodeAt: parent 
		ifPresent: 
			[:dict | 
			dict at: path basename ifPresent: 
				[:node | 
				(node isDictionary ifTrue: [FSDirectoryExists] ifFalse: [FSFileExists]) 
					signalWith: path].
			dict at: path basename put: Dictionary new]
		ifAbsent: [self directoryDoesNotExist: parent]