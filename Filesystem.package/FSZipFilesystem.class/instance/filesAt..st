private
filesAt: aPath
	| all |
	all := archive members collect: [:ea | self stringToPath: ea fileName].
	all := all select: [:ea | ea size = (aPath size + 1) and: [aPath contains: ea]].
	^ all collect: [:ea | self referenceTo: ea]
			