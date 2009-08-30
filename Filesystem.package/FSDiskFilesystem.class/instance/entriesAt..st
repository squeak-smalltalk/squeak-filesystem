public
entriesAt: anObject
	| path |
	path := self resolve: anObject.
	^ Array streamContents:
		[:out |
		self
			directoryAt: path
			ifAbsent: [self invalidDirectory: path]
			entriesDo: [:entry | out nextPut: (self referenceTo: path / entry first)]]