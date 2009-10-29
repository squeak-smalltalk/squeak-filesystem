streams
readStreamIfAbsent: aBlock
	self isFile ifFalse: [^ aBlock value].
	^ self readStream