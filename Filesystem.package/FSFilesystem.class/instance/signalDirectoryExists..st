error raising
signalDirectoryExists: path 
	"Raise FSDirectoryExists exception"
	
	^ FSDirectoryExists signalWith: (self referenceTo: path)