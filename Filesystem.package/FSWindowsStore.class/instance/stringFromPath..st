converting
stringFromPath: aPath
	^ String streamContents: [:out | aPath printOn: out delimiter: self delimiter]