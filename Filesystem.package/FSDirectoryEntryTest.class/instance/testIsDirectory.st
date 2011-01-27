tests
testIsDirectory

	| ref entry |
	ref := FSDiskFilesystem imageDirectory.
	entry := ref entry.
	self assert: entry isDirectory.
	self deny: entry isFile.