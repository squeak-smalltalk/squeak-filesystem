internal
treeEntryFor: aReference
	^ GitTreeEntry
		entryName: aReference basename
		mode: (GitTreeEntry modeFor: aReference)
		objectSignature: (objectMap at: aReference path) signature