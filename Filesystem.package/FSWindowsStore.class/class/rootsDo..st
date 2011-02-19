as yet unclassified
rootsDo: aBlock
	self isActiveClass ifTrue:
		[self currentDisksDo: [:ea | aBlock value: (self disk: ea)]]