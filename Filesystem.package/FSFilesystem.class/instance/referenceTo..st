public
referenceTo: anObject 
	^ FSReference 
		filesystem: self
		path: (self toPath: anObject)