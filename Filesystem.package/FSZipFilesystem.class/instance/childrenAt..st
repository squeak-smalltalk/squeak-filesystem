public
childrenAt: anObject 
	| path |
	path := self resolve: anObject.
	^ Array streamContents:
		[:out |
		self directoriesAt: path do: [:ea | out nextPut: (self referenceTo: ea)].
		self filesAt: path do: 
			[:ea | 
			path := self stringToPath: ea fileName.
			out nextPut: (self referenceTo: path)]]