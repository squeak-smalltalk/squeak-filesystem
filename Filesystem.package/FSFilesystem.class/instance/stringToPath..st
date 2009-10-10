converting
stringToPath: aString
	| delimiter in segments out ch |
	delimiter := self delimiter.
	segments := OrderedCollection new.
	in := aString readStream.
	out := (String new: 10) writeStream.
	[in atEnd] whileFalse:
		[ch := in next.
		ch = delimiter
			ifFalse: [out nextPut: ch]
			ifTrue: [segments add: out contents.
					out := (String new: 10) writeStream]].
	segments add: out contents.
	^ FSPath withAll: segments.