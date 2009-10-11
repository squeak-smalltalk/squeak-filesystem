tests
testIsDirectory
	self assert: (filesystem isDirectory: FSDiskFilesystem imageDirectory path)