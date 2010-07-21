tests
testCreateAndReadFile
	| stream filename |
	filename := 'missing File'.
	self deny: (modified referenceTo: filename) exists.
	self deny: (workingCopy referenceTo: filename) exists.
	self
		shouldnt: [ 
			[ stream := fs writeStreamOn: filename. 
			stream nextPutAll: 'initial content'. ]
				ensure: [ stream close ] ]
		raise: FSFileDoesNotExist.
	self assert: (fs readStreamOn: filename) contents asString = 'initial content'.
	self deny: (workingCopy referenceTo: filename) exists.
	self assert: (modified referenceTo: filename) exists.
	self assert: (fs referenceTo: filename) exists