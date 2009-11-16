public
isFile: anObject 
	| path |
	path := self resolve: anObject.
	self 
		nodeAt: path
		ifPresent: [ :entry | ^ self basicIsFile: entry ]
		ifAbsent: [ ^ false ]