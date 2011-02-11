private
replaceFile: anObject in: aBlock 
	| path |
	path := self resolve: anObject.
	^ self 
		nodeAt: path parent
		ifPresent: 
			[ :node | 
			| old new |
			(self basicIsDirectory: node) ifFalse: [ self fileDoesNotExist: path ].
			old := node data 
				at: path basename
				ifAbsent: [ self fileDoesNotExist: path ].
			new := aBlock value: old.
			node data 
				at: path basename
				put: new ]
		ifAbsent: [ self fileDoesNotExist: path ]