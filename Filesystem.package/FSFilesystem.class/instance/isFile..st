public
isFile: anObject
	| path |
	path := self resolve: anObject.
	^ store isFile: path