showing
visit: aReference
	aReference isDirectory
		ifTrue: [visitor visitDirectory: aReference]
		ifFalse: [visitor visitFile: aReference]
	