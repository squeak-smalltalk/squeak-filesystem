public
referenceFromString: aString
	| fs |
	fs := FSFilesystem onDisk.
	^ FSReference
		filesystem: fs
		path: (fs pathFromString: aString)