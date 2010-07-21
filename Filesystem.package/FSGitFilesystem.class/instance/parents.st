git
parents
	^ revision 
		ifNil: [ OrderedCollection new ]
		ifNotNil: [ revision parents collect: [ :commit | 
				GitFS for: repository revision: commit ] ]