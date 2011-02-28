error raising
signalNodeDoesNotExist: aPath
	"Raise exception related to absence of files or directories"
	
	(self isFile: aPath) 
		ifTrue: [self signalFileDoesNotExist: aPath]
		ifFalse: [self signalDirectoryDoesNotExist: aPath]