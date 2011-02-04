instance creation
filesystem: aFilesystem path: path array: array
	"Create a directory entry given a filesystem and a path in such filesystem. In addition, the creation time, the modification time, the kind of files (folder or files) and its size are given as the  last four elements of a five element array. See FSFilePluginPrims>>lookupEntryIn:index:"
	
	^ self 
		filesystem: aFilesystem
		path: path
		creation: (array at: 2)
		modification: (array at: 3)
		isDir: (array at: 4)
		size: (array at: 5)