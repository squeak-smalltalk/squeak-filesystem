tests
testReadNonexistentFile
	self 
		should: [ fs readStreamOn: 'missing File' ]
		raise: FSFileDoesNotExist