navigating
resolvePath: aPath
	| elements |
	aPath isAbsolute ifTrue: [^ aPath].
	elements := Array new: self size + aPath size.
	1 to: self size do: [:i | elements at: i put: (self at: i)].
	1 to: aPath size do: [:i | elements at: self size + i put: (aPath at: i)].
	^ self class withAll: (self class canonicalizeElements: elements)