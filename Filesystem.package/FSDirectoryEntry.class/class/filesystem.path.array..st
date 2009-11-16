as yet unclassified
filesystem: fs path: path array: array
	^ self 
		filesystem: fs
		path: path
		creation: (array at: 2)
		modification: (array at: 3)
		isDir: (array at: 4)
		size: (array at: 5)