accessing
updateRef: refPath to: aGitObjectSignature
	| target pathReference |
	target := [(self baseDir resolve: refPath) readStreamDo: [ :stream | stream contents ]]
		on: FSFileDoesNotExist do: [:ex | ex return: nil].

	(target isNil not and: [target beginsWith: 'ref:']) ifTrue: [
		^ self updateRef: (target allButFirst: 4) withBlanksTrimmed to: aGitObjectSignature ].

	pathReference := self baseDir resolve: refPath.
	pathReference parent ensureDirectory.
	pathReference writeStreamDo: [ 
		:stream | stream truncate; nextPutAll: aGitObjectSignature hexHash; nextPut: Character lf ]