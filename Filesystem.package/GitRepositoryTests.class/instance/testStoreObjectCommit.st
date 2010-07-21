tests
testStoreObjectCommit
	| tree commit signature hash storedObject |
	tree := GitTree new.
	commit := GitCommit new.
	commit
		author: self defaultStamp;
		committer: self defaultStamp;
		tree: tree;
		message: 'testCommit'.
	signature := commit signature.
	hash := SecureHashAlgorithm new hashMessage: signature bytes.
	hash := hash hex asLowercase forceTo: 40 paddingStartWith: $0.
	storedObject := repository storeObject: commit.
	self assert: storedObject = commit