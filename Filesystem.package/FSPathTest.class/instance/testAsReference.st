tests
testAsReference
	| path reference |
	path := FSPath with: 'plonk'.
	reference := path asReference.
	self assert: reference class = FSReference.
	self assert: reference path = path