ansi gettable
upToEnd
	| start data |
	start := position.
	data := self basicNext: handle size - start.
	^ isBinary ifTrue: [data] ifFalse: [self converter decodeString: data asString]