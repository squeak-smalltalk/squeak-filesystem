tests
testCreateAndDeleteFile
	| stream |
	self assert: modified root children isEmpty.
	[ stream := fs writeStreamOn: 'newFile'. 
	stream nextPutAll: 'some content'. ]
		ensure: [ stream close ].
	self deny: modified root children isEmpty.
	
	fs delete: (fs resolve: 'newFile').
	self assert: modified root children isEmpty.
	self deny: (fs referenceTo: 'newFile') exists