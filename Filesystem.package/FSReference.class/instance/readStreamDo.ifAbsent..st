streams
readStreamDo: doBlock ifAbsent: aBlock
	self isFile ifFalse: [^ aBlock value].
	^ self readStreamDo: doBlock