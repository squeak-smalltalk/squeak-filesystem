private
initialize
	super initialize.
	workingDirectoryPath := (self pathFromString: (Primitives decode: Primitives imageFile)) parent