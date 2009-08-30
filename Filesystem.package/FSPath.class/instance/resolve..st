navigating
resolve: anObject
	| elements path |
	path := anObject asPath.
	path isAbsolute ifTrue: [^ path].
	elements := Array new: self size + path size.
	1 to: self size do: [:i | elements at: i put: (self at: i)].
	1 to: path size do: [:i | elements at: self size + i put: (path at: i)].
	^ self class withAll: (self class canonicalizeElements: elements)