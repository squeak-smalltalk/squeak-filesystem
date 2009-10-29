tests
testWriteStreamDoifPresentNot
	| ref pass path |
	pass := false.
	path := FSPath * 'plonk'.
	filesystem createFile: path.
	ref := filesystem referenceTo: path.
	ref 
		writeStreamDo: [:stream]
		ifPresent: [pass := true].
	self assert: pass