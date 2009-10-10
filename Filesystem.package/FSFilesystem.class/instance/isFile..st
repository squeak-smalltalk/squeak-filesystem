public
isFile: anObject 
	| path |
	path := self resolve: anObject.
	self 
		entryAt: path
		ifPresent: [ :entry | ^ self basicIsFile: entry ]
		ifAbsent: [ ^ false ]