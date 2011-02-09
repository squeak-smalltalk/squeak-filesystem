public
referenceTo: aStringOrPath 
	"Return a reference to the argument from the context of the receiver filesystem.  Example: FSDiskFilesystem current referenceTo: 'plonk/griffle.taz'"
	
	^ FSReference 
		filesystem: self
		path: (self pathFromObject: aStringOrPath)