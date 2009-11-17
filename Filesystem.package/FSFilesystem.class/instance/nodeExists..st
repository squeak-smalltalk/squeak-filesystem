error handling
nodeExists: aPath
	(self isFile: aPath) 
		ifTrue: [self fileExists: aPath]
		ifFalse: [self directoryExists: aPath]