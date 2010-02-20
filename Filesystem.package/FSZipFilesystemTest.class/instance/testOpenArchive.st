tests
testOpenArchive
	| memory archive |
	memory := FSMemoryFilesystem new.
	memory root / 'fs.zip' writeStreamDo: [ :stream | stream nextPutAll: #[80 75 3 4 10 0 2 0 0 0 152 90 84 60 227 229 149 176 12 0 0 0 12 0 0 0 7 0 28 0 103 114 105 102 102 108 101 85 84 9 0 3 128 183 127 75 114 183 127 75 117 120 11 0 1 4 245 1 0 0 4 20 0 0 0 72 101 108 108 111 32 87 111 114 108 100 10 80 75 1 2 30 3 10 0 2 0 0 0 152 90 84 60 227 229 149 176 12 0 0 0 12 0 0 0 7 0 24 0 0 0 0 0 1 0 0 0 164 129 0 0 0 0 103 114 105 102 102 108 101 85 84 5 0 3 128 183 127 75 117 120 11 0 1 4 245 1 0 0 4 20 0 0 0 80 75 5 6 0 0 0 0 1 0 1 0 77 0 0 0 77 0 0 0 0 0] ].
	
	archive := FSZipFilesystem atReference: memory root / 'fs.zip'.
	archive open.
	self assert: (archive root children size = 1).
	self assert: (archive root / 'griffle') exists.
	self assert: (archive root / 'griffle') readStream contents = #[72 101 108 108 111 32 87 111 114 108 100 10]