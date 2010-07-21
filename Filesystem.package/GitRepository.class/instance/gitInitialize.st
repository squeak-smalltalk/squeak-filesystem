accessing
gitInitialize
	self exists
		ifTrue: [ ^ self ].
	self createReferencedDirectory.
	self gitDirectories do: [ :dir | (self baseDir resolve: dir) createDirectory ].
	self baseDir / 'HEAD'
		writeStreamDo: [ :stream | 
			stream
				nextPutAll: 'ref: refs/heads/master';
				nextPut: Character lf ]