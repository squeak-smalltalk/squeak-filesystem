private
initialize
	super initialize.
	workingDirectory := (self pathFromString: (Primitives decode: Primitives imageFile)) parent