accessing
packedObjectAtOffset: offset 
	| p c |
	p := FileStream readOnlyFileNamed: basePath , '.pack'.
	p binary.
	p position: offset.
	c := GitPackedObject new pack: self.
	c loadFrom: p.
	^ c