as yet unclassified
on: aCollection filesystem: aFilesystem path: aPath 
	^ self 
		on: aCollection
		reference: (FSReference 
				filesystem: aFilesystem
				path: aPath)