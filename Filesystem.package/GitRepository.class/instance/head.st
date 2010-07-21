accessing
head
	| signature |
	signature := self resolveRef: 'HEAD'.
	signature
		ifNotNil: [ ^ self objectWithSignature: signature ]
		ifNil: [ ^ nil ]