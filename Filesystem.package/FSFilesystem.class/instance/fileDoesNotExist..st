error handling
fileDoesNotExist: path 
	^ FSFileDoesNotExist signalWith: (self referenceTo: path)