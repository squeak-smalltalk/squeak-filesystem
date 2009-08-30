public
open: anObject writable: aBoolean 
	| path |
	path := self resolve: anObject asPath.
	^ FSFileHandle open: (FSReference filesystem: self path: path) writable: aBoolean
		