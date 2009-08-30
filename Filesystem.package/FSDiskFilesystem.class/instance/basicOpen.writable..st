public
basicOpen: aPath writable: aBoolean 
	^ Primitives 
		open: (self pathToString: aPath)
		writable: aBoolean