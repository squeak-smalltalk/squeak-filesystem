printing
printOn: aStream
	super printOn: aStream.
	self entryName
		ifNotNil: [
			aStream
				nextPutAll: '(''';
				nextPutAll: self entryName;
				nextPutAll: ''')' ]