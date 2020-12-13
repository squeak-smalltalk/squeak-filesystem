tests-references
testWriteStreamTruncate
	| reference |
	self delete: (reference := filesystem workingDirectory / 'griffle').
	reference writeStreamDo: [ :stream | stream nextPutAll: 'griffle' ].
	self assert: (reference writeStreamDo: [ :stream | stream truncate: 3. true ]).
	self assert: 'gri' equals: (reference readStreamDo: [ :stream | stream contents ]).