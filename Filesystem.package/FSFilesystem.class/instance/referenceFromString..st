converting
referenceFromString: aString
	^ FSReference filesystem: self path: (store pathFromString: aString)