public
delete: anObject
	| path |
	path := self resolve: anObject.
	self
		entryAt: path parent
		ifPresent: [:dict | dict removeKey: path basename]
		ifAbsent: []