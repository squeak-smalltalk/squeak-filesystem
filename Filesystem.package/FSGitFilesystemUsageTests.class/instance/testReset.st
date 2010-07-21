tests
testReset
	| stream  |
	self assert: modified root children isEmpty.
	self assert: workingCopy root children isEmpty.
	[ stream := fs writeStreamOn: 'afile' ]
		ensure: [stream close ].
	(fs root resolve: 'aFolder') ensureDirectory.
	[ stream := fs writeStreamOn: 'aFolder/afile' ]
		ensure: [stream close ].
	self assert: modified root children size = 2.
	self assert: modified root allChildren size = 4.
	
	fs reset.
	self assert: modified root children isEmpty.
	self assert: fs root children isEmpty