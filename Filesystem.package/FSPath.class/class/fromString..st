instance creation
fromString: aString
	| delimiters in segments out ch |
	delimiters := self delimiters.
	segments := OrderedCollection new.
	in := aString readStream.
	out := (String new: 10) writeStream.
	[in atEnd] whileFalse:
		[ch := in next.
		(delimiters includes: ch)
			ifFalse: [out nextPut: ch]
			ifTrue: [segments add: out contents.
					out := (String new: 10) writeStream]].
	segments add: out contents.
	^ self withAll: segments.