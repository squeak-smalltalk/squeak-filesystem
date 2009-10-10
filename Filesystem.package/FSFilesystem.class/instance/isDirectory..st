public
isDirectory: anObject 
	| path |
	path := self resolve: anObject.
	path isRoot ifTrue: [^ true].
	self 
		entryAt: path
		ifPresent: [ :entry | ^ self basicIsDirectory: entry ]
		ifAbsent: [ ^ false ]