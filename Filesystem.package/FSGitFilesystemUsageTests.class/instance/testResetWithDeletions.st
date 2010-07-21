tests
testResetWithDeletions
	| ref |
	self createSomeCommits.
	ref := fs root resolve: 'file1'.
	self assert: ref exists.
	
	ref delete.
	self deny: ref exists.
	
	fs reset.
	self assert: ref exists