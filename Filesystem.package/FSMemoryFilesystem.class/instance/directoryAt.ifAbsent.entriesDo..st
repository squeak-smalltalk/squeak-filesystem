private
directoryAt: aPath ifAbsent: absentBlock entriesDo: aBlock 
	self
		entryAt: aPath
		ifPresent:
			[:directory |
			directory isDictionary ifFalse: [^ absentBlock value].
			directory keysAndValuesDo: [:name :entry | aBlock value: name -> entry]]
		ifAbsent: absentBlock