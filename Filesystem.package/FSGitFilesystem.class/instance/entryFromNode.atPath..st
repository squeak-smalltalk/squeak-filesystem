private
entryFromNode: node atPath: aPath

	^ FSDirectoryEntry
		filesystem: self
		path: aPath
		creation: 0
		modification: 0
		isDir: node isDictionary
		size: (node isDictionary ifTrue: [0] ifFalse: [node size])