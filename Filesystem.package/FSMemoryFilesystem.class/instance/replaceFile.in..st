private
replaceFile: anObject in: aBlock 
	| path |
	path := self resolve: anObject.
	^ self 
		nodeAt: path parent
		ifPresent: 
			[ :node | 
			| old new |
			(self basicIsDirectory: node) ifFalse: [ self signalFileDoesNotExist: path ].
			old := node data 
				at: path basename
				ifAbsent: [ self signalFileDoesNotExist: path ].
			new := aBlock value: old.
			node data 
				at: path basename
				put: new ]
		ifAbsent: [ self signalFileDoesNotExist: path ]