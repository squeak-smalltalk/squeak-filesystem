navigating
relativeToPath: landmarkPath
	"Return the receiver as relative to the argument landmarkPath"
	
	"(FSPath / 'griffle' / 'plonk' / 'nurp') 
		relativeToPath: (FSPath / 'griffle') 
			returns  plonk/nurp"
	
	| prefix relative |
	landmarkPath isRelative ifTrue: [^ landmarkPath].
	prefix := self lengthOfStemWith: landmarkPath.
	relative := FSPath parents: (landmarkPath size - prefix).
	prefix + 1 to: self size do: [:i | relative := relative / (self at: i)].
	^ relative