tests
testReferencingSubDirs
	| mem ref1 ref2 |
	mem := FSMemoryFilesystem new.
	ref1 := mem working / 'test' / 'dir'.
	ref2 := mem working / 'test' / 'dir'.
	self assert: ref1 = ref2.
	
	ref2 := mem working / 'test/dir'.
	self assert: ref1 species = ref2 species.
	self assert: ref1 filesystem = ref2 filesystem.
	self deny: ref1 path = ref2 path.
	self deny: ref1 = ref2