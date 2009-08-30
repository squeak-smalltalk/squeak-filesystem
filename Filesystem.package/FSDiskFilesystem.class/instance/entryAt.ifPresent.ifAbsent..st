private
entryAt: aPath ifPresent: presentBlock ifAbsent: absentBlock 
	| name |
	name := aPath basename.
	self 
		directoryAt: aPath parent
		ifAbsent: absentBlock
		entriesDo: 
			[ :entry | 
			(self 
				entryName: (entry at: 1)
				matches: name) ifTrue: [ ^ presentBlock value: entry ] ].
	^ absentBlock value