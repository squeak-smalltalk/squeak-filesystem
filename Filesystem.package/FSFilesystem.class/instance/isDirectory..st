public
isDirectory: anObject 
	| path |
	path := self resolve: anObject.
	path isRoot ifTrue: [ ^ true ].
	self 
		nodeAt: path
		ifPresent: [ :entry | ^ self basicIsDirectory: entry ]
		ifAbsent: [ ^ false ]