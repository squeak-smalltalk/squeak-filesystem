enumeration
fileEntries
	^ reference entries
		select: [:each | each isFile]
		thenCollect: [:each | FSFileDirectoryEntryAdapter onEntry: each]