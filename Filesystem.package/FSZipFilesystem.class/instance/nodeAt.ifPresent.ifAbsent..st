private
nodeAt: aPath ifPresent: presentBlock ifAbsent: absentBlock 
	| name |
	^ self 
		directoryAt: aPath
		ifPresent: [ presentBlock value: aPath ]
		ifAbsent: 
			[ name := self pathToString: aPath.
			(archive memberNamed: name) 
				ifNotNil: [ presentBlock value: (archive memberNamed: name) ]
				ifNil: absentBlock ]