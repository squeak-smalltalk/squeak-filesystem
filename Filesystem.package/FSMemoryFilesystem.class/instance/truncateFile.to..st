private
truncateFile: anObject to: anInteger 
	^ self 
		replaceFile: anObject
		in: [ :bytes | bytes first: anInteger ]