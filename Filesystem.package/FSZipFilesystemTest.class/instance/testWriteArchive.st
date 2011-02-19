tests
testWriteArchive
	| memory archive |
	memory := FSFilesystem inMemory.
	archive := FSFilesystem inZip: memory root / 'fs.zip'.
	archive open.
	(archive root / 'griffle')
		writeStreamDo: [ :stream | stream nextPutAll: 'Hello World' ].
	archive close.
	
	self assert: (memory root / 'fs.zip') exists.
	self assert: (memory root / 'fs.zip') entry size > 0