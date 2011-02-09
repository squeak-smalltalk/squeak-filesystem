error raising
nodeExists: aPath
	"Raise Exception related to presence of files or directories"
	
	(self isFile: aPath) 
		ifTrue: [self fileExists: aPath]
		ifFalse: [self directoryExists: aPath]