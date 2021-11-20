accessing - multibyte support
basicNext: count
	^ self basicNextInto: (self collectionSpecies new: count)
