as yet unclassified
initializeDisks
	| index entry letter |
	Disks := Dictionary new.
	index := 1.
	[entry := Primitives lookupEntryIn: '' index: index.
	entry isNil] whileFalse: 
		[letter := entry first allButLast.
		Disks 
			at: letter
			put: (self newForDisk: letter).
		index := index + 1]