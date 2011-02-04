accessing
size
	^ self isDirectory
		ifTrue: [0]
		ifFalse: [data size]
		