streams
writeStreamDo: doBlock ifPresent: pBlock
	self isFile ifTrue: [^ pBlock value].
	^ self writeStreamDo: doBlock