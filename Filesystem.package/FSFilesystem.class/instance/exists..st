public
exists: anObject 
	| path |
	path := self resolve: anObject.
	self 
		entryAt: path
		ifPresent: [ :entry | ^ true ]
		ifAbsent: [ ^ false ]