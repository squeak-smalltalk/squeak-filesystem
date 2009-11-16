as yet unclassified
testIsNotFile
	| ref |
	ref := FSDiskFilesystem imageDirectory.
	self deny: ref entry isFile