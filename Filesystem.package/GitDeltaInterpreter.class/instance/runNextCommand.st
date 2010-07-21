as yet unclassified
runNextCommand
	| cmd |
	cmd := commands next.
	cmd = 0 ifTrue: [self error: 'unexpected delta opcode 0'].
	cmd < 128
		ifTrue: [output nextPutAll: (commands next: cmd)]
		ifFalse: [
			| off size |

			off := 0.
			(cmd bitAnd: 2r00000001) isZero ifFalse: [off := commands next].
			(cmd bitAnd: 2r00000010) isZero ifFalse: [off := off bitOr: (commands next bitShift: 8)].
			(cmd bitAnd: 2r00000100) isZero ifFalse: [off := off bitOr: (commands next bitShift: 16)].
			(cmd bitAnd: 2r00001000) isZero ifFalse: [off := off bitOr: (commands next bitShift: 24)].

			size := 0.
			(cmd bitAnd: 2r00010000) isZero ifFalse: [size := commands next].
			(cmd bitAnd: 2r00100000) isZero ifFalse: [size := size bitOr: (commands next bitShift: 8)].
			(cmd bitAnd: 2r01000000) isZero ifFalse: [size := size bitOr: (commands next bitShift: 16)].
			size = 0 ifTrue: [size := 16r10000].
			
			output nextPutAll: (source copyFrom: off + 1 to: off + size)]