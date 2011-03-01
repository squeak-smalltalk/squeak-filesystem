navigating
relativeTo: landmarkPathOrReference
	"Return a new path relative to landmarkPathOrReference.
	parent/child/grandChild relativeTo: parent returns child/grandChild"
	
	"FSPath / 'griffle' / 'plonk' / 'nurp' relativeTo: FSPath / 'griffle'"
	
	^ landmarkPathOrReference relativize: self