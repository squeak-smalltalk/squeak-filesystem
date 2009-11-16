private
entryFromNode: aNode atPath: aPath 
	^ aNode class = FSPath 
		ifTrue: 
			[ FSDirectoryEntry 
				filesystem: self
				path: aPath
				creation: 0
				modification: 0
				isDir: true
				size: 0 ]
		ifFalse: 
			[ FSDirectoryEntry 
				filesystem: self
				path: aPath
				creation: aNode lastModTime
				modification: aNode lastModTime
				isDir: false
				size: aNode uncompressedSize ]