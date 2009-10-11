converting
pathToString: aPath 
	^ String streamContents: 
		[ :out | 
		out
			nextPutAll: disk;
			nextPut: $:.
		aPath 
			printOn: out
			delimiter: self delimiter ]