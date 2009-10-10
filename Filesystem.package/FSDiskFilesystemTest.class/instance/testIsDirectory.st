tests
testIsDirectory
	self halt.
	self assert: (filesystem isDirectory: FSReference defaultDirectory path)