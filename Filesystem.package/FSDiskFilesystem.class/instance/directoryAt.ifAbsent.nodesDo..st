private
directoryAt: aPath ifAbsent: absentBlock nodesDo: aBlock 
	| index pathString entry |
	index := 1.
	pathString := self stringFromPath: aPath.
	entry := Primitives 
		lookupEntryIn: pathString
		index: index.
	entry = #badDirectoryPath ifTrue: [ ^ absentBlock value ].
	[ entry isNil ] whileFalse: 
		[ aBlock value: entry.
		index := index + 1.
		entry := Primitives 
			lookupEntryIn: pathString
			index: index ]