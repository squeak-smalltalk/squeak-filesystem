public
createDirectory: anObject 
	| parent path |
	path := self resolve: anObject.
	parent := path parent.
	self 
		nodeAt: parent 
		ifPresent: 
			[:parentNode | 
			parentNode data at: path basename ifPresent: 
				[:node | 
				(node isDirectory ifTrue: [FSDirectoryExists] ifFalse: [FSFileExists]) 
					signalWith: path].
			parentNode data at: path basename put: FSMemoryNode newDirectory]
		ifAbsent: [self directoryDoesNotExist: parent]