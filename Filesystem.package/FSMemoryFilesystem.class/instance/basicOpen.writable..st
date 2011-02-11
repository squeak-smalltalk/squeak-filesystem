private
basicOpen: anObject writable: aBoolean 
	| path |
	path := self resolve: anObject.
	^ self 
		nodeAt: path
		ifPresent: [ :node | node ]
		ifAbsent: 
			[ aBoolean 
				ifFalse: [ self fileDoesNotExist: path ]
				ifTrue: [ self createFile: path ] ]