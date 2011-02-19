public
entryAt: anObject
	| path |
	path := self resolve: anObject.
	^ store
		nodeAt: path
		ifPresent: [ :node | store entryFromNode: node filesystem: self path: path ]
		ifAbsent: [ store fileDoesNotExist: path ]