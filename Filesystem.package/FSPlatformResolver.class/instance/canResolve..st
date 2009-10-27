as yet unclassified
canResolve: aSymbol
	^ (super canResolve: aSymbol) and: [Smalltalk hasClassNamed: 'OSProcess']