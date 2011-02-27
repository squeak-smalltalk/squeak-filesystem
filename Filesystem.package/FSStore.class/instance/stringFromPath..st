converting
stringFromPath: aPath
	"Use the unix convention by default, since it's the most common."
	
	^ String streamContents: 
		[:out |
		aPath isAbsolute ifTrue: [out nextPut: $/].
		aPath printOn: out delimiter: self delimiter]