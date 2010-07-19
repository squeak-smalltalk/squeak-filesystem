tests-references
testWriteStream
	| reference stream |
	self delete: (reference := filesystem working / 'griffle').
	stream := reference writeStream.
	stream nextPutAll: 'griffle'.
	stream close.
	self assert: (filesystem working / 'griffle') isFile.
	stream := reference writeStream.
	stream close