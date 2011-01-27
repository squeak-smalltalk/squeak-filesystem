public
isDirectory: aPath

	| path |
	path := self resolve: aPath.
	path isRoot ifTrue: [ ^ true ].
	self 
		nodeAt: path
		ifPresent: [ :entry | ^ self basicIsDirectory: entry ]
		ifAbsent: [ ^ false ]