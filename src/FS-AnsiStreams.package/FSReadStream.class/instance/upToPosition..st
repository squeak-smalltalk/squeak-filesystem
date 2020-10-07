accessing
upToPosition: anInteger
	"Answer a subcollection containing items starting from the current position and ending including the given position. Usefully different to #next: in that in the case of MultiByteFileStream, and perhaps others, positions measure in terms of encoded items, while #next: convention is to name a number of items, independent of their encoding in the underlying buffer."
	
	isBinary ifTrue: [^ self next: anInteger].
	
	^ String streamContents: [ :stream | | ch |
		[(self position >= anInteger) or: [(ch := self next) == nil]]
			whileFalse: [stream nextPut: ch]]