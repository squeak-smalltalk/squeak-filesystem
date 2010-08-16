error handling
fileExists: path 
	^ FSFileExists signalWith: (self referenceTo: path)