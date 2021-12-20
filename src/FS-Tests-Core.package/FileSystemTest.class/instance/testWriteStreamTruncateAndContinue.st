tests-references
testWriteStreamTruncateAndContinue
	| reference |
	self delete: (reference := filesystem workingDirectory / 'griffle').
	reference writeStreamDo: [ :stream | stream nextPutAll: 'griffle' ].
	self assert: (reference writeStreamDo:
		[ :stream |
		stream truncate: 3.
		stream nextPutAll: 'bonk'.
		true ]).
	self assert: 'gribonk' equals: (reference readStreamDo: [ :stream | stream contents ]).