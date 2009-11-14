as yet unclassified
testAll
	FSCopyVisitor 
		copy: (source referenceTo: '/alpha') 
		to: (dest referenceTo: '/alpha').
	self assert: (dest exists: '/alpha').