private
entryAt: aPath ifPresent: presentBlock ifAbsent: absentBlock
	| name member |
	name := self pathToString: aPath.
	member := (archive memberNamed: name) ifNil: 
		[name := name copyWith: $/.
		archive memberNamed: name].
	^ member
		ifNotNil: [presentBlock value: member]
		ifNil: absentBlock