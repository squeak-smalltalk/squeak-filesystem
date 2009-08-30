public
open: anObject writable: aBoolean 
	| path |
	path := self resolve: anObject.
	^ FSZipHandle 
		open: (self referenceTo: path) 
		writable: aBoolean
		