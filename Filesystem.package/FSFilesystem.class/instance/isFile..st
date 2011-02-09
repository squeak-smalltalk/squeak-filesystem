public
isFile: anObject 
	"Return true whether the argument path is referencing to an existing file."
	| path |
	path := self resolve: anObject.
	self 
		nodeAt: path
		ifPresent: [ :entry | ^ self basicIsFile: entry ]
		ifAbsent: [ ^ false ]