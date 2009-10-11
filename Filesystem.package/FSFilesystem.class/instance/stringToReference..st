converting
stringToReference: aString
	^ FSReference
		filesystem: self
		path: (self stringToPath: aString)