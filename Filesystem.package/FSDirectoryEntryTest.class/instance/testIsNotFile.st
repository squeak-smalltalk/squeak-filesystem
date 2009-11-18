tests
testIsNotFile
	| ref |
	ref := FSDiskFilesystem imageDirectory.
	self deny: ref entry isFile