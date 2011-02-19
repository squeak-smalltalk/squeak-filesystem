public
open: anObject writable: aBoolean 
	| path |
	path := self resolve: anObject.
	^ store handleClass 
		open: (FSReference filesystem: self path: path) 
		writable: aBoolean
		