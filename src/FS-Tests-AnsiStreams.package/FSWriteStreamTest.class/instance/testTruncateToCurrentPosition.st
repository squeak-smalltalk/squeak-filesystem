tests
testTruncateToCurrentPosition
	stream 
		nextPutAll: #(42 43 44 45 46);
		flush;
		position: 3;
		truncate: stream position.
	self assert: self contents = #(42 43 44) asByteArray