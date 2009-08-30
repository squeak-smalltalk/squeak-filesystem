public
isFile: anObject 
	self 
		entryAt: (self resolve: anObject asPath)
		ifPresent: [ :entry | ^ self basicIsFile: entry ]
		ifAbsent: [ ^ false ]