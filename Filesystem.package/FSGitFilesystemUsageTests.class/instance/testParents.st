commit tests
testParents
	fs parents isEmpty.
	
	self commit: 'a commit'.
	fs := fsRepository head.
	self assert: fs parents isEmpty.
	
	self commit: 'commit number 2'.
	fs := fsRepository head.
	self deny: fs parents isEmpty.
	self assert: fs parents size = 1