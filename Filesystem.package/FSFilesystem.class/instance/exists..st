public
exists: anObject 
	self 
		entryAt: (self resolve: anObject asPath)
		ifPresent: [ :entry | ^ true ]
		ifAbsent: [ ^ false ]