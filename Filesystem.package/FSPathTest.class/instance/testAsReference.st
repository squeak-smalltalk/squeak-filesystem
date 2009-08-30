tests
testAsReference
	| path reference |
	path := 'plonk' asPath.
	reference := path asReference.
	self assert: reference class = FSReference
