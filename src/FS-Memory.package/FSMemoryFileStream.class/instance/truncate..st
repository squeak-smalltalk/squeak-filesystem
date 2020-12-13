writing
truncate: aPosition
	position := readLimit := aPosition.
	position > collection size ifTrue: [self growTo: aPosition].