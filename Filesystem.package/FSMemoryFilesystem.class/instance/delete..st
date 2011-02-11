public
delete: anObject 
	| path |
	path := self resolve: anObject.
	self 
		nodeAt: path parent
		ifPresent: [ :node | node data removeKey: path basename ]
		ifAbsent: [  ]