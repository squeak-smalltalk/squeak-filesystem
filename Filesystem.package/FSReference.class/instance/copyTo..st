public
copyTo: aReference
	filesystem = aReference filesystem 
		ifTrue: [filesystem copy: path to: aReference path]
		ifFalse: [self shouldBeImplemented]