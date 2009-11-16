private
basicOpen: anObject writable: aBoolean 
	| path |
	path := self resolve: anObject.
	^ self 
		nodeAt: path
		ifPresent: [ :bytes | bytes ]
		ifAbsent: 
			[ aBoolean 
				ifFalse: [ self fileDoesNotExist: path ]
				ifTrue: [ self createFile: path ] ]