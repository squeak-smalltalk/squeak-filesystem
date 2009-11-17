error handling
directoryExists: path 
	FSDirectoryExists signalWith: (self referenceTo: path)