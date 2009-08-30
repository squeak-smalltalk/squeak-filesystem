public
entriesAt: anObject
	| path all |
	path := self normalize: anObject.
	all := archive members collect: [:ea | self normalize: ea fileName asPath].
	all := all select: [:ea | ea size = (path size + 1) and: [path contains: ea]].
	^ all collect: [:ea | self referenceTo: ea]
			