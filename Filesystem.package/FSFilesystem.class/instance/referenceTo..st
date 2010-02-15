public
referenceTo: anObject 

	^ FSReference 
		filesystem: self
		path: (self pathFromObject: anObject)