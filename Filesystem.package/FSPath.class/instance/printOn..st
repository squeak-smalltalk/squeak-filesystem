printing
printOn: aStream 
	aStream nextPut: $[.
	self printOn: aStream delimiter: self delimiter.
	aStream nextPut: $]