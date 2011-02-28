error raising
signalFileExists: path 
	"Raise FSFileExist exception"
	
	^ FSFileExists signalWith: (self referenceTo: path)