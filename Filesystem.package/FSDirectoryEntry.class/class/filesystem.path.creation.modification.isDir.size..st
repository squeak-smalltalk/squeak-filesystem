instance creation
filesystem: fs path: p creation: ct modification: mt isDir: d size: s
	^ self 
		reference: (fs referenceTo: p)
		creation: ct
		modification: mt
		isDir: d
		size:s