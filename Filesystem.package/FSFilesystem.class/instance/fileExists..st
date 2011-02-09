error raising
fileExists: path 
	"Raise FSFileExist exception"
	
	^ FSFileExists signalWith: (self referenceTo: path)