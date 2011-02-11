some ulesess release class

Questions

why basename does not copy its result as base does

basename
	"Returns the base of the basename, i.e. /foo/gloops.taz basename is 'gloops.taz'"
	^ self at: self size

base
	"Returns the base of the basename, i.e. /foo/gloops.taz basename is 'gloops'"
	^ self basename copyUpTo: self extensionDelimiter	


why there is no fullname or pathString in FSPath?

