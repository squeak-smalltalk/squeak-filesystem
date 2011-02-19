delegated
openFileStream: anObject writable: aBoolean
	^ store 
		openFileStream: (self resolve: anObject) 
		writable: aBoolean