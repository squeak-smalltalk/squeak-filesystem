public
open: anObject writable: aBoolean 
	| path |
	path := self resolve: anObject.
	^ FSMemoryHandle 
		open: (self referenceTo: path) 
		writable: aBoolean
		