public
openFileStream: anObject writable: aBoolean 
	| path member name |
	path := self resolve: anObject.
	member := self 
		entryAt: path
		ifPresent: [:entry | entry]
		ifAbsent: 
			[name := self pathToString: path.
			archive addString: '' as: name].
	^ FSZipFileStream on: member contents filesystem: self path: path