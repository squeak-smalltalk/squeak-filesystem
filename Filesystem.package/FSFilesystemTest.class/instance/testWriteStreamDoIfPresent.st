tests-references
testWriteStreamDoIfPresent
	| reference |
	self delete: (reference := filesystem working / 'griffle').
	self assert: (reference 
		writeStreamDo: [ :stream |
			stream nextPutAll: 'griffle'.
			true ]
		ifPresent: [ false ]).
	self assert: (filesystem working / 'griffle') isFile.
	self assert: (reference 
		writeStreamDo: [ :stream | true ]
		ifPresent: [ true ])