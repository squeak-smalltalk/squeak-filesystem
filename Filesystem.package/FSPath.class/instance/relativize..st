navigating
relativize: aPathOrReference
	"Return aPathOrReference as relative to the receiver."
	
	"(FSPath / 'griffle')
		makeRelative: (FSPath / 'griffle' / 'plonk' / 'nurp') 
			returns  plonk/nurp"
			
	^ aPathOrReference relativeToPath: self