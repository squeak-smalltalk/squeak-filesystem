private
directoryAt: aPath ifAbsent: absentBlock nodesDo: aBlock
	| encodedPathString index entry pathString |
	index := 1.
	pathString := self stringFromPath: aPath.
	encodedPathString := self primitives encode: pathString.
	entry := self primitives lookupEntryIn: encodedPathString index: index.
	entry = #badDirectoryPath
		ifTrue: [ ^ absentBlock value ].
	[ entry isNil ]
		whileFalse: [ 
			entry at: 1 put: (self primitives decode: entry first).
			aBlock value: entry.
			index := index + 1.
			entry := self primitives lookupEntryIn: encodedPathString index: index ].
	^ self