as yet unclassified
readVariableInteger
	| val shift b |
	val := 0.
	shift := 0.
	[
		b := commands next.
		val := val bitOr: ((b bitAnd: 127) bitShift: shift).
		shift := shift + 7.
	] doWhileFalse: [(b bitAnd: 128) isZero].
	^ val