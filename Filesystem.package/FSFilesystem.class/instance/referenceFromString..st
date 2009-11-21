converting
referenceFromString: aString 
	^ FSReference 
		filesystem: self
		path: (self pathFromString: aString)