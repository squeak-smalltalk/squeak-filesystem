public
basicOpen: aPath writable: aBoolean 
	^ Primitives 
		open: (self stringFromPath: aPath)
		writable: aBoolean