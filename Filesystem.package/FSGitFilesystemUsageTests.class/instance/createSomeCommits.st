helpers
createSomeCommits
	(fs root resolve: 'file1') writeStreamDo: [ :stream | stream nextPutAll: 'content' ].
	self commit: 'first commit'.
	(fs root resolve: 'dir1') ensureDirectory.
	(fs root resolve: 'dir1/file2') writeStreamDo: [ :stream | stream nextPutAll: 'more content' ].
	self commit: 'second commit'