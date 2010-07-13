private
putRootsOn: aStream
	self isCurrentClass ifTrue:
		[self currentDisksDo:
			[:disk | aStream nextPut: (self disk: disk) root]]