error handling
directoryDoesNotExist: path 
	FSDirectoryDoesNotExist signalWith: (self referenceTo: path)