public
open: aStringOrPath writable: aBoolean 
	"Open a file identified by aStringOrPath using the specified access mode. Return a FileHandle instance."
	| path |
	path := self resolve: aStringOrPath.
	^ FSFileHandle 
		open: (FSReference filesystem: self path: path) 
		writable: aBoolean
		