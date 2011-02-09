error raising
directoryDoesNotExist: path 
	"Raise FSDirectoryDoesNotExist exception"
	
	^ FSDirectoryDoesNotExist signalWith: (self referenceTo: path)