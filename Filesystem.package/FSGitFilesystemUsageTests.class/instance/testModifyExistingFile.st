tests
testModifyExistingFile
	| ref originalContent |
	self createSomeCommits.
	self assert: fs root children size = 2.
	self assert: fs root allChildren size = 4.
	
	ref := fs root resolve: 'dir1/file2'.
	originalContent := ref readStream contents asString.
	ref writeStreamDo: [ :stream | 
		stream 
			nextPutAll: originalContent;
			nextPutAll: '/moremoremore' ].
	self assert: fs root children size = 2.
	self assert: fs root allChildren size = 4.
	ref := workingCopy root resolve: 'dir1/file2'.
	self assert: ref exists.
	self assert: ref readStream contents asString = 'more content'.
	ref := modified root resolve: 'dir1/file2'.
	self assert: ref exists.
	self assert: ref readStream contents asString = 'more content/moremoremore'