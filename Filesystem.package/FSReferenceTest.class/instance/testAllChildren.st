tests
testAllChildren
	| ref children |
	filesystem createDirectory: '/alpha'.
	filesystem createDirectory: '/alpha/beta'.
	filesystem createDirectory: '/alpha/beta/delta'.
	filesystem createDirectory: '/alpha/gamma'.
	
	ref := filesystem referenceTo: '/alpha'.
	children := ref allChildren.
	self assert: children size = 4.
	children do:
		[:child |
		self assert: child class = FSReference.
		self assert: (ref = child or: [ref contains: child])].
	self assert: (children collect: [:ea | ea basename]) = #('alpha' 'beta' 'gamma' 'delta')