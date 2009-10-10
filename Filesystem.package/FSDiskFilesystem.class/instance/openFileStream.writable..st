public
openFileStream: anObject writable: aBoolean 
	| fullPath |
	fullPath := self pathToString: (self resolve: anObject).
	^ StandardFileStream new 
		open: fullPath
		forWrite: aBoolean