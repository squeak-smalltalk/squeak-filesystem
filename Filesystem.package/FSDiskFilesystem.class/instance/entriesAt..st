public
entriesAt: anObject
	| path |
	path := self resolve: anObject asPath.
	^ Array streamContents:
		[:out |
		self
			directoryAt: path
			ifAbsent: [self invalidDirectory: path]
			entriesDo: [:entry | out nextPut: (self referenceTo: path / entry first)]]