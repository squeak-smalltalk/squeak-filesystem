printing
printOn: aStream
	super printOn: aStream.
	self message
		ifNotNil: [
			aStream
				nextPutAll: '(''';
				nextPutAll: self message;
				nextPutAll: ''')' ]