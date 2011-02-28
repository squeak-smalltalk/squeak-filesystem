error raising
signalNodeExists: aPath
	"Raise Exception related to presence of files or directories"
	
	(self isFile: aPath) 
		ifTrue: [self signalFileExists: aPath]
		ifFalse: [self signalDirectoryExists: aPath]