navigating
, extension 
	| base path |
	base := (self at: self size) copyUpToLast: self extensionDelimiter.
	path := self copy.
	path 
		at: self size
		put: base , '.' , extension.
	^ path