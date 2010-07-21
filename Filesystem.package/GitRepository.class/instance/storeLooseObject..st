accessing
storeLooseObject: aGitStorableObject
	| zipStream compressed pathReference |
	zipStream := ZLibWriteStream on: (ByteArray new).
	zipStream nextPutAll: aGitStorableObject signature bytes; close.
	compressed := zipStream encodedStream contents.
	
	pathReference := self baseDir resolve: (self looseObjectPathFor: aGitStorableObject signature).
	pathReference parent ensureDirectory.
	pathReference writeStreamDo: [ :stream | stream nextPutAll: compressed ].
	^aGitStorableObject