tests
testIsNotRoot
	self deny: (filesystem referenceTo: FSPath root / 'plonk') isRoot