saving
store
	self isLightTag
		ifTrue: [self storeLightTag]
		ifFalse: [self storeFullTag]
	