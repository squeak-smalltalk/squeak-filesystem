as yet unclassified
putRootsOn: aStream
	self isCurrentClass ifTrue:
		[self currentDisksDo:
			[:disk | aStream nextPut: (self disk: disk) root]]