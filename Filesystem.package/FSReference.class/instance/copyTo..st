operations
copyTo: aReference
	self isDirectory 
		ifTrue: [aReference ensureDirectory]
		ifFalse: 
			[filesystem = aReference filesystem 
				ifTrue: [filesystem copy: path to: aReference path]
				ifFalse: [self basicCopyTo: aReference]]