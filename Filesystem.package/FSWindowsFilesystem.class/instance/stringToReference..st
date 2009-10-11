converting
stringToReference: aString
	| in fs letter |
	in := aString readStream.
	(aString at: 2) = $: 
		ifFalse: [fs := self]
		ifTrue:
			[letter := in next: 1.
			in skip: 1.
			fs := Disks at: letter ifAbsentPut: [self class newForDisk: letter]].
	^ FSReference filesystem: fs path: (FSPath readFrom: in delimiter: self delimiter)
	 