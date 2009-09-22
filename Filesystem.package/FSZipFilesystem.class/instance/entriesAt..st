public
entriesAt: anObject
	| path |
	path := self resolve: anObject.
	^ (self filesAt: path) addAll: (self directoriesAt: path)