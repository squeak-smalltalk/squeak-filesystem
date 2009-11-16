public
createDirectory: anObject 
	| parent path |
	path := self resolve: anObject.
	parent := path parent.
	self 
		nodeAt: parent
		ifPresent: 
			[ :dict | 
			dict 
				at: path basename
				put: Dictionary new ]
		ifAbsent: 
			[ self createDirectory: parent.
			self createDirectory: path ]