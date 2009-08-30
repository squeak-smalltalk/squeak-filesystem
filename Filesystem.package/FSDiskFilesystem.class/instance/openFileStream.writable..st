public
openFileStream: anObject writable: aBoolean 
	| fullPath |
	fullPath := (self resolve: anObject asPath) asString.
	^ StandardFileStream new 
		open: fullPath
		forWrite: aBoolean