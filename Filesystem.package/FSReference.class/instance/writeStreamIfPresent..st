streams
writeStreamIfPresent: aBlock
	self isFile ifTrue: [^ aBlock value].
	^ self writeStream