private
canonicalizeElements: aCollection
	| result |
	result := OrderedCollection new.
	aCollection do:
		[:element |
		element = '..' 
			ifTrue: [result isEmpty 
						ifTrue: [result add: element]
						ifFalse: [result removeLast]]
			ifFalse: [element = '.' 
						ifFalse: [result add: element]]].
	^ result