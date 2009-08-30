navigating
assureExtension: aString
	| extension |
	extension := (aString first = self extensionDelimiter) 
		ifTrue: [aString]
		ifFalse: [aString copyWithFirst: self extensionDelimiter].
	^ (self basename endsWith: extension)
		ifTrue: [self]
		ifFalse: [self copy
					at: self size put: (self basename, extension);
					yourself]