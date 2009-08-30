public
isDirectory: anObject 
	self 
		entryAt: (self resolve: anObject asPath)
		ifPresent: [ :entry | ^ self basicIsDirectory: entry ]
		ifAbsent: [ ^ false ]