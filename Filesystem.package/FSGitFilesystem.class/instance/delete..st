public
delete: anObject
	| path fileNotFound |
	path := self resolve: anObject.
	fileNotFound := false.
	
	workingCopy
		nodeAt: path
		ifPresent: [ :node |
			deletions add: path ]
		ifAbsent: [ fileNotFound := true ].
	modified
		nodeAt: path
		ifPresent: [ :node | 
			modified delete: path.
			fileNotFound := false ]
		ifAbsent: [ "do nothing" ].
		
	fileNotFound ifTrue: [ self fileDoesNotExist: path ]