as yet unclassified
allRootsDo: aBlock
	self rootsDo: aBlock.
	self subclassesDo: [:ea | ea allRootsDo: aBlock]