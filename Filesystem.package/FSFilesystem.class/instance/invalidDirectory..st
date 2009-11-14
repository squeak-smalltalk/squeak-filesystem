error handling
invalidDirectory: path 
	FSInvalidDirectory signalWith: (self referenceTo: path)