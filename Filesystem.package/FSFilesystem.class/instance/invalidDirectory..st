error handling
invalidDirectory: path 
	^ (InvalidDirectoryError pathName: (self pathToString: path)) signal