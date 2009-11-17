public
createDirectory: anObject 
	| path parent |
	path := self resolve: anObject.
	self 
		nodeAt: path
		ifPresent: [:p | self nodeExists: path ]
		ifAbsent: 
			[ parent := path parent.
			self 
				directoryAt: parent
				ifPresent: [ directories add: path ]
				ifAbsent: [ self directoryDoesNotExist: parent ] ]