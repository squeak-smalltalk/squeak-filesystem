public
at: index put: anObject
	index > node size ifTrue: [self grow].
	node data at: index put: (anObject isCharacter
		ifTrue: [ anObject codePoint ]
		ifFalse: [ anObject ]).
	size := size max: index