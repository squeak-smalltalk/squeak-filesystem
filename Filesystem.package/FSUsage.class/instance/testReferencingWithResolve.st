tests
testReferencingWithResolve
	| mem ref1 ref2 |
	mem := FSMemoryFilesystem new.
	ref1 := mem working / 'test'.
	ref1 := mem working resolve: 'test/blah'.
	ref2 := mem working / 'test' / 'blah'	.
	self assert: ref1 = ref2