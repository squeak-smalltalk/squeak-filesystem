public
entriesAt: anObject 
	| result |
	result := OrderedCollection new.
	result addAll: (
		workingCopy 
			nodeAt: anObject
			ifPresent: [ :node | workingCopy entriesAt: anObject ]
			ifAbsent: [ #() ]).
	result addAll: (
		modified 
			nodeAt: anObject
			ifPresent: [ :node | modified entriesAt: anObject ]
			ifAbsent: [ #() ]).
	
	result copy do: [ :elem1 | 
		result copy do: [ :elem2 |
			(elem1 reference path = elem2 reference path 
				and: [ elem1 reference filesystem ~= elem2 reference filesystem ] )
					ifTrue: [ result remove: 
						[ elem1 reference filesystem = workingCopy
							ifTrue: [ elem1 ]
							ifFalse: [ elem2 ] ] value ] ] ] .
	result do: [ :each | 
		each
			initializeWithRef:  [ 
				each reference setFilesystem: self path: each reference path.
				each reference ] value
			creation: each creation
			modification: each modification
			isDir: each isDirectory
			size: each size ].
	result copy do: [ :each |
		(deletions includes: each reference path) ifTrue: [ result remove: each ] ].
		
	^ result