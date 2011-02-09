error raising
directoryExists: path 
	"Raise FSDirectoryExists exception"
	
	^ FSDirectoryExists signalWith: (self referenceTo: path)