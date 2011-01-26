instance creation
fromString: aString
	"Returns a filesystem instance from a path expressed as a string."

	| fs |
	fs := self current.
	^ FSReference 
		filesystem: fs
		path: (fs pathFromString: aString)