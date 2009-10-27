as yet unclassified
unknownOrigin: origin
	| reference |
	
	^ (next resolve: origin) ifNil: 
		[reference := FSResolutionRequest for: origin.
		reference ifNotNil: [cache at: origin put: reference]]