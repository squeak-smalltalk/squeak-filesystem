public
entryAt: anObject 

	| path |
	path := self resolve: anObject.
	^ self 
		nodeAt: path
		ifPresent:  [:node | self entryFromNode: node atPath: path]
		ifAbsent: [self fileDoesNotExist: path]