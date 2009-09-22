public
delete: anObject
	| path |
	path := self resolve: anObject.
	(directories includes: path) 
		ifTrue: [directories remove: path]
		ifFalse: 
			[self
				entryAt: path
				ifPresent: [:member | archive removeMember: member]
				ifAbsent: []]