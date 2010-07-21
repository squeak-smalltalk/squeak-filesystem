accessing
loadFrom: aStream
	| b type shift |
	file := aStream.
	headerPos := file position.
	b := file next.
	type := (b bitShift: -4) bitAnd: 7.
	length := b bitAnd: 15.
	shift := 4.
	[(b bitAnd: 128) isZero] whileFalse: [
		b := file next.
		length := length bitOr: ((b bitAnd: 127) bitShift: shift).
		shift := shift + 7].
	self unpackContentType: type.