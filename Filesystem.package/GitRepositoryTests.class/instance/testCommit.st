tests
testCommit
	| blob tree commit tag lightTag |
	blob := GitBlob bytes: 'hello'.
	repository storeObject: blob.
	tree := GitTree
		entries: {(GitTreeEntry entryName: 'testFile' mode: GitTreeEntry fileMode objectSignature: blob signature)}.
	repository storeObject: tree.
	commit := (GitCommit new)
		author: self defaultStamp;
		committer: self defaultStamp;
		tree: tree;
		message: 'initial commit';
		yourself.
	repository storeObject: commit.
	tag := GitTag
		makeTagNamed: 'tagtest'
		for: commit
		message: 'First tag'
		tagger: self defaultStamp
		in: repository.
	lightTag := GitTag makeLightTagNamed: 'light tag' for: commit in: repository.
	repository updateRef: 'HEAD' to: commit signature