converting
stringFromPath: aPath
	^ String
		streamContents: [ :out | 
			out
				nextPutAll: self disk;
				nextPut: $:.
			aPath printOn: out delimiter: self delimiter ]