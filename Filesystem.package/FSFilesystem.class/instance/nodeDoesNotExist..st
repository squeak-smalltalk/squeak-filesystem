error raising
nodeDoesNotExist: aPath
	"Raise exception related to absence of files or directories"
	
	(self isFile: aPath) 
		ifTrue: [self fileDoesNotExist: aPath]
		ifFalse: [self directoryDoesNotExist: aPath]