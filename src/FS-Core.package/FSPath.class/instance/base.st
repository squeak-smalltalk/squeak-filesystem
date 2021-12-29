accessing
base
	"Returns the base of the basename, i.e. /foo/gloops.tar.gz basename is 'gloops.tar'"
	^ self basename copyUpToLast: self extensionDelimiter