public
exists: anObject 
	"Return whether the argument exits in the receiver."
	| path |
	path := self resolve: anObject.
	self 
		nodeAt: path
		ifPresent: [ :entry | ^ true ]
		ifAbsent: [ ^ false ]