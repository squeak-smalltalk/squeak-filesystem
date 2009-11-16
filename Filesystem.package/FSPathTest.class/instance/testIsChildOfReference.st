tests
testIsChildOfReference
	| parent child |
	parent := FSPath / 'griffle'.
	child := (FSMemoryFilesystem new referenceTo: parent / 'nurb').
	self deny: (child isChildOf: parent).
	self deny: (parent isChildOf: child)