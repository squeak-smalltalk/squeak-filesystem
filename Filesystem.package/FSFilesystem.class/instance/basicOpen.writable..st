private
basicOpen: anObject writable: aBoolean
	| path |
	path := self resolve: anObject.
	^ store basicOpen: path writable: aBoolean