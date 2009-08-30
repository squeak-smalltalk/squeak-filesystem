error handling
fileExists: path 
	^ (FileExistsException fileName: path asString) signal