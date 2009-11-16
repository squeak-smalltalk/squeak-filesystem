as yet unclassified
testIsDirectory
	| ref entry |
	ref := FSDiskFilesystem imageDirectory.
	entry := ref entry.
	self assert: entry isDirectory