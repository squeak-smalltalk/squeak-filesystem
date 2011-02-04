private
nodeAt: aPath ifPresent: presentBlock ifAbsent: absentBlock 
	| current |
	current := root.
	aPath do: 
		[ :segment | 
		current isDirectory
			ifTrue: 
				[ current := current data
					at: segment
					ifAbsent: [ ^ absentBlock value ] ]
			ifFalse: [ ^ absentBlock value ] ].
	^ presentBlock value: current