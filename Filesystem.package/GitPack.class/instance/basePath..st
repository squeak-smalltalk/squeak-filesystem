accessing
basePath: aString
	basePath := aString.
	idx := FileStream readOnlyFileNamed: basePath, '.idx'.
	idx binary.
	((idx next: 8) = #(255 116 79 99 0 0 0 2) asByteArray)
		ifFalse: [self error: 'Bad pack index header'].
	fanoutTable := idx next: 1024. "256 4-byte big-endian entries."
	objectCount := self fanoutTableAt: 255.