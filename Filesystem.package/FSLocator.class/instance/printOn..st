as yet unclassified
printOn: aStream
	| fs |
	fs := self filesystem.
	aStream
		nextPut: ${;
		nextPutAll: origin;
		nextPut: $}.
	path isWorkingDirectory ifFalse:
		[aStream nextPut: fs delimiter.
		self filesystem printPath: path on: aStream]