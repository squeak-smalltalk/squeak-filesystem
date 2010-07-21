helpers
buildMockFor: aGitObjectClass
	| repository tree fakeName |
	repository := GitRepository on: (FSMemoryFilesystem new root resolve: 'test').
	fakeName := GitObjectSignature for: (GitBlob bytes: 'test').
	tree := GitTree entries: {
		(GitTreeEntry 
			entryName: 'testFile' 
			mode: GitTreeEntry fileMode 
			objectSignature: fakeName)}.
	aGitObjectClass = GitBlob
		ifTrue: [ ^ GitBlob bytes: 'test' ].
	aGitObjectClass = GitCommit
		ifTrue: [ 
			^ (GitCommit new)
				author: self defaultStamp;
				committer: self defaultStamp;
				tree: tree;
				message: 'initial commit';
				yourself ].
	aGitObjectClass = GitTag
		ifTrue: [ 
			^ GitTag
				makeTagNamed: 'testTag'
				for: (self buildMockFor: GitCommit)
				message: 'aMessage'
				tagger: self defaultStamp
				in: repository ].
	aGitObjectClass = GitTree
		ifTrue: [ ^ GitTree entries: {(GitTreeEntry entryName: 'testFile' mode: GitTreeEntry fileMode objectSignature: fakeName)} ].
	self error: 'the class you provided needs to be instantieted to test #loadFrom'