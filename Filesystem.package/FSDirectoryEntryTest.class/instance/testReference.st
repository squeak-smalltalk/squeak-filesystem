as yet unclassified
testReference
	| ref entry |
	ref := FSDiskFilesystem imageFile.
	entry := ref entry.
	self assert: entry reference = ref