public
writeStreamOn: anObject
	^ (self open: anObject writable: true) writeStream.