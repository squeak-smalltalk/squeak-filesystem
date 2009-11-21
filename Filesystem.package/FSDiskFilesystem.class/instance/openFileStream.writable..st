public
openFileStream: anObject writable: aBoolean 
	| fullPath |
	fullPath := self stringFromPath: (self resolve: anObject).
	^ StandardFileStream new 
		open: fullPath
		forWrite: aBoolean