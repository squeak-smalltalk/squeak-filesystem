tests-references
testFileStreamTruncate
	| reference |
	self delete: (reference := filesystem workingDirectory / 'griffle').
	reference fileStreamDo: [ :stream | stream nextPutAll: 'griffle' ].
	self assert: (reference fileStreamDo: [ :stream | stream truncate: 3. true ]).
	self assert: 'gri' equals: (reference readStreamDo: [ :stream | stream contents ]).