testing
isContainedByReference: aReference
	^  aReference filesystem = filesystem and: [aReference path contains: path]