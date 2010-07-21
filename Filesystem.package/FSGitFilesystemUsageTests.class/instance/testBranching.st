commit tests
testBranching
	| master branch |
	self commit: 'a commit'.
	master := basicRepository objectWithSignature: (basicRepository resolveRef: 'refs/heads/master').
	self assert: master message = 'a commit'.
	
	self branch: 'my fork' message: 'my first branch'.
	branch := basicRepository objectWithSignature: (basicRepository resolveRef: 'refs/heads/my fork').
	self assert: branch message = 'my first branch'.
	
	self assert: branch parents size = 1.
	self assert: branch parents first = master
	