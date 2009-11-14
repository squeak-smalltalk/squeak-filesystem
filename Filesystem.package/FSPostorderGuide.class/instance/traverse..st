showing
traverse: aReference
	self pushVisit: aReference.
	aReference isDirectory ifTrue:
		[aReference entries reverseDo: 
			[:ea | self pushTraverse: ea]]