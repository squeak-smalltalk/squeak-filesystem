public
openFileStream: aPath writable: aBoolean 
	| path bytes |
	path := self resolve: aPath.
	bytes := self 
		nodeAt: path
		ifPresent: [ :node | node data ]
		ifAbsent: [(self createFile: path) data ].
	^ FSMemoryFileStream 
		on: bytes
		filesystem: self
		path: path