as yet unclassified
putRootsOn: aStream 
	self isCurrentClass ifTrue: [ aStream nextPut: self current root ]