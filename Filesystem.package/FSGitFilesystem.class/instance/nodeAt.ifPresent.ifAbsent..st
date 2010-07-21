private
nodeAt: aPath ifPresent: presentBlock ifAbsent: absentBlock
	(deletions includes: aPath) ifTrue: [ ^ absentBlock value ].
	
	^ modified 
		nodeAt: aPath 
		ifPresent: [ :node |
			workingCopy 
				nodeAt: aPath
				ifPresent: presentBlock
			 	ifAbsent: [ presentBlock value: node ] ]
		ifAbsent: [ 
			workingCopy 
				nodeAt: aPath
				ifPresent: presentBlock
			 	ifAbsent: absentBlock]