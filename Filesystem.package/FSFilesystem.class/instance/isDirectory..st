public
isDirectory: aPath
	"Return true whether the argument path is referencing to an existing directory."
	| path |
	path := self resolve: aPath.
	path isRoot ifTrue: [ ^ true ].
	self 
		nodeAt: path
		ifPresent: [ :entry | ^ self basicIsDirectory: entry ]
		ifAbsent: [ ^ false ]