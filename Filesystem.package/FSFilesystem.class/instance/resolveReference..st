navigating
resolveReference: aReference
	^ aReference filesystem = self 
			ifTrue: [workingDirectoryPath resolvePath: aReference path]