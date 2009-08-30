public
at: index put: anObject
	index > bytes size ifTrue: [self grow].
	bytes at: index put: anObject.
	size := size max: index