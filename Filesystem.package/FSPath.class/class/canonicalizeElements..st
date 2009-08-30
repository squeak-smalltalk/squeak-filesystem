instance creation
canonicalizeElements: aCollection
	| result |
	result := OrderedCollection new.
	aCollection do:
		[:element |
		element = '..' 
			ifTrue: [result isEmpty ifFalse: [result removeLast]]
			ifFalse: 
				[element = '.' ifFalse: [result add: element]]].
	^ result