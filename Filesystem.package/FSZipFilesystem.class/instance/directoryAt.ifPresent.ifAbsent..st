private
directoryAt: aPath ifPresent: presentBlock ifAbsent: absentBlock
	^ (aPath isRoot or: [directories includes: aPath])
		ifTrue: presentBlock
		ifFalse: absentBlock