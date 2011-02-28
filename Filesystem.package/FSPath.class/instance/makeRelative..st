navigating
makeRelative: anObject
	"Return anObject as relative to the receiver."
	
	"(FSPath / 'griffle')
		makeRelative: (FSPath / 'griffle' / 'plonk' / 'nurp') 
			returns  plonk/nurp"
			
	^ anObject relativeToPath: self