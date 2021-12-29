accessing
extension
	"Return the extension of path basename i.e., /foo/gloops.tar.gz extension is 'gz'"
	
	^ self basename copyAfterLast: self extensionDelimiter