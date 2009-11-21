private
memberAt: aPath ifPresent: presentBlock ifAbsent: absentBlock 
	| name |
	name := self stringFromPath: aPath.
	^ (archive memberNamed: name) 
		ifNotNil: [ presentBlock value: (archive memberNamed: name) ]
		ifNil: absentBlock