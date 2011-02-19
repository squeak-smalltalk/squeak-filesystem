public
rootsDo: aBlock
	self isActiveClass ifTrue: [ aBlock value: self new]