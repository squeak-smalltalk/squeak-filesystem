tests-references
testWriteStreamIfPresent
	| reference stream |
	self delete: (reference := filesystem working / 'griffle').
	stream := reference writeStreamIfPresent: [ false ].
	stream nextPutAll: 'griffle'.
	stream close.
	self assert: (filesystem working / 'griffle') isFile.
	self assert: (reference writeStreamIfPresent: [ true ])