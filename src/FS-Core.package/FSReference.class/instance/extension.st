accessing
extension
	"Returns the extension of the basename, i.e. /foo/gloops.taz extension is 'taz'.
	Note that for compound extensions, only the last segment is returned:
	/foo/gloops.tar.gz extension is 'gz'"
	
	^ path extension