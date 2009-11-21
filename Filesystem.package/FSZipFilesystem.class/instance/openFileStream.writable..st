public
openFileStream: anObject writable: aBoolean 
	| path member name |
	path := self resolve: anObject.
	member := self 
		nodeAt: path
		ifPresent: [ :entry | entry ]
		ifAbsent: 
			[ name := self stringFromPath: path.
			archive 
				addDeflateString: ''
				as: name ].
	^ FSZipFileStream 
		on: member contents
		filesystem: self
		path: path