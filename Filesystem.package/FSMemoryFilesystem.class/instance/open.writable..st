public
open: aStringOrPath writable: aBoolean 
	"Open a file identified by aPath using the specified access mode. Return a FileHandle instance."
	| path |
	path := self resolve: aStringOrPath.
	^ FSMemoryHandle 
		open: (self referenceTo: path) 
		writable: aBoolean
		