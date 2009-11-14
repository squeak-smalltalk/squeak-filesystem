asserting
assertVisitedIs: anArray
	visited with: anArray do:
		[:ref :basename | 
		self assert: ref basename = basename]