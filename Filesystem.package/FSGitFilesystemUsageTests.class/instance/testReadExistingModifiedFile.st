tests
testReadExistingModifiedFile
	self createSomeCommits.
	(fs root resolve: 'file1') writeStreamDo: [ :stream | stream nextPutAll: 'changed it' ].
	self assert: (fs root resolve: 'file1') readStream contents asString = 'changed it'