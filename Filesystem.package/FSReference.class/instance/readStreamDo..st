public
readStreamDo: aBlock
	| stream |
	stream := self readStream.
	^ [aBlock value: stream] ensure: [stream ifNotNil: [stream close]]