streams
fileStreamDo: aBlock
	| stream |
	[stream := filesystem openFileStream: path writable: true.
	aBlock value: stream]
		ensure: [stream ifNotNil: [stream close]]
	