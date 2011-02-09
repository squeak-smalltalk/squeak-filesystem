error raising
fileDoesNotExist: path 
	"Raise FSFileDoesNotExist exception"
	
	^ FSFileDoesNotExist signalWith: (self referenceTo: path)