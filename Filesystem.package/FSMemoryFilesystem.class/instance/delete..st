public
delete: anObject 
	| path |
	path := self resolve: anObject.
	self 
		nodeAt: path parent
		ifPresent: [ :dict | dict removeKey: path basename ]
		ifAbsent: [  ]