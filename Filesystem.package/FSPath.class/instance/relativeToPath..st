navigating
relativeToPath: aPath
	| prefix relative |
	aPath isRelative ifTrue: [^ aPath].
	prefix := self lengthOfStemWith: aPath.
	relative := FSPath parents: (aPath size - prefix).
	prefix + 1 to: self size do: [:i | relative := relative / (self at: i)].
	^ relative