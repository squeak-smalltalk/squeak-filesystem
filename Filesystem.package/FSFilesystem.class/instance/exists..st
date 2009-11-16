public
exists: anObject 
	| path |
	path := self resolve: anObject.
	self 
		nodeAt: path
		ifPresent: [ :entry | ^ true ]
		ifAbsent: [ ^ false ]