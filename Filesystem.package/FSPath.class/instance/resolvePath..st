navigating
resolvePath: aPath
	"Returns a path that represents the resulting resolution with respect to 	the receiver and the argument. The resolution of an absolute path is itself.
	Relative paths '..' / '..'   are resolved in the context of the receiver."
	
	| elements |
	aPath isAbsolute ifTrue: [^ aPath].
	elements := Array new: self size + aPath size.
	1 to: self size do: [:i | elements at: i put: (self at: i)].
	1 to: aPath size do: [:i | elements at: self size + i put: (aPath at: i)].
	^ self class withAll: (self class canonicalizeElements: elements)