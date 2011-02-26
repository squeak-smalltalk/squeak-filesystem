navigating
relativeTo: anObject
	"Return a new path relative to anObject.
	parent/child/grandChild relativeTo: parent returns child/grandChild"
		
	"(FSDiskFilesystem workingDirectory / 'griffle' / 'plonk' / 'nurp')  
		relativeTo: (FSDiskFilesystem workingDirectory / 'griffle') 
	returns plonk/nurp"
	
	^ anObject makeRelative: self