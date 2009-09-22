private
directoriesAt: aPath
	| paths |
	paths := directories select: [:ea | ea size = (aPath size + 1) and: [aPath contains: ea]].
	^ paths collect: [:ea | self referenceTo: ea]
			