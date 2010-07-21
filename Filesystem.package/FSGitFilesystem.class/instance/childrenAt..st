public
childrenAt: anObject 
	| result |
	result := OrderedCollection new.
	result addAll: (
		workingCopy 
			nodeAt: anObject
			ifPresent: [ :node | workingCopy childrenAt: anObject ]
			ifAbsent: [ #() ]).
	result addAll: (
		modified 
			nodeAt: anObject
			ifPresent: [ :node | modified childrenAt: anObject ]
			ifAbsent: [ #() ]).
	
	result copy do: [ :elem1 | 
		result copy do: [ :elem2 |
			(elem1 path = elem2 path and: [ elem1 filesystem ~= elem2 filesystem ] )
				ifTrue: [ result remove: 
					[ elem1 filesystem = workingCopy
						ifTrue: [ elem1 ]
						ifFalse: [ elem2 ] ] value ] ] ] .
	result do: [ :each | each setFilesystem: self path: each path ].
	result copy do: [ :each |
		(deletions includes: each path) ifTrue: [ result remove: each ] ].
		
	^ result