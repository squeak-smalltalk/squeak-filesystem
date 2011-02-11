private
directoryAt: aPath ifAbsent: absentBlock nodesDo: aBlock 
	self 
		nodeAt: aPath
		ifPresent: [ :node | 
			node isDirectory
				ifFalse: [ ^ absentBlock value ].
			node data associations sorted
				do: aBlock ]
		ifAbsent: absentBlock