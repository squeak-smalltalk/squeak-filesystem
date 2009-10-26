resolving
unknownOrigin: aSymbol
	^ next 
		ifNil: [self error: 'Unable to resolve origin #', aSymbol]
		ifNotNil: [next resolve: aSymbol]