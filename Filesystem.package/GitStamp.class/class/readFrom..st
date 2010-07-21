instance creation
readFrom: aStream
	| n e s sign z |
	n := (aStream upTo: $<) withBlanksTrimmed.
	e := (aStream upTo: $>) withBlanksTrimmed.
	aStream skipSeparators.
	s := Integer readFrom: aStream.
	aStream skipSeparators.
	sign := aStream next.
	('-+' includes: sign) ifFalse: [self error: 'Invalid timezone sign'].
	z := Integer readFrom: aStream.
	z := (z // 100) hours + (z \\ 100) minutes.
	sign = $- ifTrue: [z := z negated].
	
	^ self new
		name: n;
		email: e; 
		timeStamp: (((DateAndTime fromUnixTime: s) + z) offset: z);
		yourself