tests
testTruncateEmpty
	stream 
		nextPutAll: #(42 43 44 45 46);
		flush;
		position: 0;
		truncate.
	self assert: self contents isEmpty.