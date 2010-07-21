accessing
looseObjectStreamAt: aGitObjectSignature
	^ (self baseDir resolve: (self looseObjectPathFor: aGitObjectSignature)) 
		readStreamDo: [ :stream | ReadStream on: (ZLibReadStream on: stream contents) contents ]