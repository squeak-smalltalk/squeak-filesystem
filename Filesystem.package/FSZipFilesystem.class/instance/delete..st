public
delete: anObject
	| path |
	path := self resolve: anObject.
	self
		entryAt: path
		ifPresent: [:member | archive removeMember: member]
		ifAbsent: []