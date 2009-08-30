error handling
fileDoesNotExist: path 
	^ (FileDoesNotExistException fileName: path asString) signal