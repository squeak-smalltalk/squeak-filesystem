private
defaultWorkingDirectory
	^ (self pathFromString: (self primitives decode: self primitives imageFile)) parent