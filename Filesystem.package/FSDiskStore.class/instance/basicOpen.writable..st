public
basicOpen: aPath writable: aBoolean
	^ self primitives open: (self primitives encode: (self stringFromPath: aPath)) writable: aBoolean