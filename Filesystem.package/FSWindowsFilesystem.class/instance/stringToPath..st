converting
stringToPath: aString
	| in |
	in := aString readStream.
	(aString at: 2) = $: ifTrue: [in skip: 2].
	^ FSPath readFrom: in delimiter: self delimiter