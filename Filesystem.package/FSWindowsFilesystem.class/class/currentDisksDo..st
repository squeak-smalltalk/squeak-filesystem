as yet unclassified
currentDisksDo: aBlock
	| index entry |
	index := 1.
	[entry := Primitives lookupEntryIn: '' index: index.
	entry isNil] whileFalse: 
		[aBlock value: entry first allButLast.
		index := index + 1]