public
openFileStream: aPath writable: aBoolean 
	| path bytes |
	path := self resolve: aPath.
	bytes := self 
		nodeAt: path
		ifPresent: [ :array | array ]
		ifAbsent: [ self createFile: path ].
	^ FSMemoryFileStream 
		on: bytes
		filesystem: self
		path: path