public
directoryAt: aPath ifAbsent: absentBlock nodesDo: doBlock 
	(directories includes: aPath) ifFalse: [ ^ absentBlock value ].
	self directoriesAt: aPath do: doBlock.
	self filesAt: aPath do: doBlock