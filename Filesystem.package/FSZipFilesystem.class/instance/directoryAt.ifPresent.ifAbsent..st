private
directoryAt: aPath ifPresent: presentBlock ifAbsent: absentBlock
	^ (directories includes: aPath)
		ifTrue: presentBlock
		ifFalse: absentBlock