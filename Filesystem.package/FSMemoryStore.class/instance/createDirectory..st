public
createDirectory: path
	| parent |
	parent := path parent.
	^ self
		nodeAt: parent
		ifPresent: [ :dict | 
			dict
				at: path basename
				ifPresent: [ :node | 
					node isDictionary
						ifTrue: [ self directoryExists: path ]
						ifFalse: [ self fileExists: path ] ].
			dict at: path basename put: Dictionary new ]
		ifAbsent: [ self directoryDoesNotExist: parent ]