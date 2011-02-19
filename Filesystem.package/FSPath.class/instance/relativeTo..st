navigating
relativeTo: anObject
	"Return a new path relative to anObject.
	parent/child/grandChild relativeTo: parent returns child/grandChild"
	
	"FSPath / 'griffle' / 'plonk' / 'nurp' relativeTo: FSPath / 'griffle'"
	
	^ anObject makeRelative: self