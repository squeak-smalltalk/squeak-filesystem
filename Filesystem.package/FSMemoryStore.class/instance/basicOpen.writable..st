private
basicOpen: path writable: aBoolean
	^ self
		nodeAt: path
		ifPresent: [ :bytes | bytes ]
		ifAbsent: [ 
			aBoolean
				ifFalse: [ self fileDoesNotExist: path ]
				ifTrue: [ self createFile: path ] ]