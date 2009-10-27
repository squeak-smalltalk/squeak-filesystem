printing
printOn: aStream
	| fs |
	aStream
		nextPut: ${;
		nextPutAll: origin;
		nextPut: $}.
	path isWorkingDirectory ifFalse:
		[fs := self filesystem.
		aStream nextPut: fs delimiter.
		fs printPath: path on: aStream]