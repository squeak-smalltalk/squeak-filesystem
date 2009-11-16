showing
traverse: aReference 
	self pushVisit: aReference.
	aReference isDirectory ifTrue: [ aReference children reverseDo: [ :ea | self pushTraverse: ea ] ]