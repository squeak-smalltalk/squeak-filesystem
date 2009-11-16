public
delete: anObject 
	| path |
	path := self resolve: anObject.
	(directories includes: path) 
		ifTrue: [ directories remove: path ]
		ifFalse: 
			[ self 
				nodeAt: path
				ifPresent: [ :member | archive removeMember: member ]
				ifAbsent: [  ] ]