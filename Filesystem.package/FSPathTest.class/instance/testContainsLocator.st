tests
testContainsLocator
	| ancestor descendent |
	ancestor := FSDiskFilesystem imageDirectory path.
	descendent := FSLocator image / 'griffle'.
	self deny: (ancestor contains: descendent).
	self deny: (descendent contains: ancestor)