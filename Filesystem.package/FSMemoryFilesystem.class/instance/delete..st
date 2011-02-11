public
delete: aStringOrAPathOrAReference 

	| path |
	path := self resolve: aStringOrAPathOrAReference.
	self 
		nodeAt: path parent
		ifPresent: [ :node | node data removeKey: path basename ]
		ifAbsent: [  ]