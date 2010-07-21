commit tests
testTags
	self assert: fs tags isEmpty.
	
	self commit: 'commit 1' andTag: 'tag 1'.
	self deny: fs tags isEmpty.
	self assert: fs tags size = 1.
	self assert: (fs tags includes: 'tag 1').
	
	self commit: 'commit 2' andTag: 'tag number two'.
	self deny: fs tags isEmpty.
	self assert: fs tags size = 1.
	self assert: (fs tags includes: 'tag number two').
	
	basicRepository updateRef: 'refs/tags/tag3' to: (GitObjectSignature from: fs name).
	self assert: fs tags size = 2.
	self assert: (fs tags includesAllOf: #('tag number two' 'tag3'))