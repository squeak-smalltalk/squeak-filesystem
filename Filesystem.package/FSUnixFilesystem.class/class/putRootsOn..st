private
putRootsOn: aStream 
	self isCurrentClass ifTrue: [ aStream nextPut: self current root ]