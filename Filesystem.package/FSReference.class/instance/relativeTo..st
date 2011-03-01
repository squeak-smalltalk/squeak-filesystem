navigating
relativeTo: landmarkPathOrReference
	"Return a new path relative to anLandmarkObject.
	parent/child/grandChild relativeTo: parent returns child/grandChild"
		
	"(FSDiskFilesystem workingDirectory / 'griffle' / 'plonk' / 'nurp')  
		relativeTo: (FSDiskFilesystem workingDirectory / 'griffle') 
	returns plonk/nurp"
	
	^ landmarkPathOrReference relativize: self