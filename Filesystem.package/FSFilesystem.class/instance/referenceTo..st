public
referenceTo: anObject 
	^ FSReference 
		filesystem: self
		path: anObject asPath