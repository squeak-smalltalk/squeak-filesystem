accessing
unpackOfsDeltaContent
	| offset b base delta |
	b := file next.
	offset := b bitAnd: 127.
	[(b bitAnd: 128) isZero] whileFalse: [
		b := file next.
		"This is bizarre, but it's what pack-format.txt and the Git source says is happening."
		offset := ((offset + 1) bitShift: 7) bitOr: (b bitAnd: 127)].

	delta := self readDelta.
	base := pack packedObjectAtOffset: headerPos - offset.
	self applyDelta: delta to: base.