public
readStreamOn: anObject
	^ (self open: anObject writable: false) readStream.