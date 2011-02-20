printing
printOn: aStream
	| fs |
	aStream
		nextPut: ${;
		nextPutAll: origin;
		nextPut: $}.
	path isEmpty
		ifTrue: [ ^ self ].
	fs := self filesystem.
	aStream nextPut: fs delimiter.
	fs printPath: path on: aStream