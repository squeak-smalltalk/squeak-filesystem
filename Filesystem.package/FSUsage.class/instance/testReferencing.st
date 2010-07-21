tests
testReferencing
	| mem ref fileRef |
	mem := FSMemoryFilesystem new.
	ref := (mem working / 'dir').
	ref createDirectory.
	self assert: ref exists.
	
	fileRef := (ref / 'file').
	self deny: fileRef exists.
	fileRef writeStreamDo: [:stream | stream nextPutAll: 'foo'].
	self assert: fileRef exists.
	
	self assert: (mem working / 'dir') exists.
	self assert: (mem working / 'dir' / 'file') exists.
	self deny: (mem working / 'dir/file') exists