resolving
resolve: aSymbol
	^ (self supportedOrigins includes: aSymbol)
		ifTrue: [self perform: aSymbol]
		ifFalse: [self unknownOrigin: aSymbol]