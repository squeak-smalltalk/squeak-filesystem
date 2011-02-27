public
basicOpen: aPath writable: aBoolean
	^ Primitives open: (Primitives encode: (self stringFromPath: aPath)) writable: aBoolean