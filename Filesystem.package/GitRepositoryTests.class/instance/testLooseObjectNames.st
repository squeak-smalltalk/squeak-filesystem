tests
testLooseObjectNames
	| blob names |
	blob := repository storeObject: (GitBlob bytes: 'test').
	names := repository looseObjectNames.
	self assert: names size = 7.
	names do: [ :each | 
		self assert: each species = GitObjectSignature].
	self assert: (names includes: blob signature)