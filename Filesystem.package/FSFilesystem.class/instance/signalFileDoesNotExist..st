error raising
signalFileDoesNotExist: path 
	"Raise FSFileDoesNotExist exception"
	
	^ FSFileDoesNotExist signalWith: (self referenceTo: path)