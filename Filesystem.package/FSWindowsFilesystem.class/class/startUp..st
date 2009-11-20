as yet unclassified
startUp: resuming
	(resuming and: [FSDiskFilesystem currentClass == self]) 
		ifTrue: [self initializeDisks]