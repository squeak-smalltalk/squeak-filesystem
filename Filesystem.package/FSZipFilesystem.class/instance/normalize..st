private
normalize: anObject
	| path |
	path := self resolve: anObject.
	^ path basename isEmpty
		ifTrue: [path parent]
		ifFalse: [path]