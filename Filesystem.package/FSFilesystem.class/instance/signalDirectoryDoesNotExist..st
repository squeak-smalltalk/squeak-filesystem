error raising
signalDirectoryDoesNotExist: path 
	"Raise FSDirectoryDoesNotExist exception"
	
	^ FSDirectoryDoesNotExist signalWith: (self referenceTo: path)