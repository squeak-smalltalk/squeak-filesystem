private
entryFromNode: node atPath: aPath

	^ FSDirectoryEntry
		filesystem: self
		path: aPath
		creation: node creation
		modification: node modification
		isDir: node isDirectory
		size: node size