private
entryFromNode: node atPath: path 
	^ FSDirectoryEntry 
		filesystem: self
		path: path
		array: node