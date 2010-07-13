private
putAllRootsOn: aStream
	self putRootsOn: aStream.
	self subclassesDo: [:class | class putAllRootsOn: aStream]