private
directoryAt: aPath ifAbsent: absentBlock nodesDo: aBlock 
	self 
		nodeAt: aPath
		ifPresent: 
			[ :directory | 
			directory isDictionary ifFalse: [ ^ absentBlock value ].
			directory associationsDo: aBlock ]
		ifAbsent: absentBlock