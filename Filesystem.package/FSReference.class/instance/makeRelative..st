navigating
makeRelative: anObject
	"Return anObject as relative to the receiver."
	
	"(FSDiskFilesystem workingDirectory / 'griffle')
		makeRelative: (FSDiskFilesystem workingDirectory / 'griffle' / 'plonk' / 'nurp') 
			returns  plonk/nurp  "
	
	^ anObject relativeToReference: self