navigating
relativize: aPathOrReference
	"Return aPathOrReference as relative to the receiver."
	
	"(FSDiskFilesystem workingDirectory / 'griffle')
		makeRelative: (FSDiskFilesystem workingDirectory / 'griffle' / 'plonk' / 'nurp') 
			returns  plonk/nurp  "
	
	^ aPathOrReference relativeToReference: self