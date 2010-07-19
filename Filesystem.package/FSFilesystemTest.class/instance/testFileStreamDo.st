tests-references
testFileStreamDo
	| reference |
	self delete: (reference := filesystem working / 'griffle').
	self assert: (reference fileStreamDo: [ :stream |
		stream nextPutAll: 'griffle'.
		true ]).
	self assert: (filesystem working / 'griffle') isFile.
	self assert: (reference fileStreamDo: [ :stream | true ])