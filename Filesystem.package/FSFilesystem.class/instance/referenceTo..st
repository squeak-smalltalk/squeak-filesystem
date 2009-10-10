public
referenceTo: anObject 
	^ FSReference 
		filesystem: self
		path: (self resolve: anObject)