commit tests
testModifying
	| ref originalContent |	
	self createSomeCommits.
	ref := fs root resolve: 'file1'.
	self assert: ref readStream contents asString = 'content'.
	ref writeStreamDo: [ :stream | stream nextPutAll: 'changed it' ].
	
	self commit: 'a commit'.
	self assert: ref readStream contents asString = 'changed it'