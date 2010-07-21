as yet unclassified
saveTo: aStream
	self validate.
	self saveFixedKeysTo: aStream.
	properties ifNotNil: [properties do: [:assoc |
			self saveKey: assoc key value: assoc value to: aStream]].
	aStream lf.
	aStream nextPutAll: message.