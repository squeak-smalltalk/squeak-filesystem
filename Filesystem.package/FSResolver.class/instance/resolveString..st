resolving
resolveString: aString 
	| decoded |
	decoded := (FilePath pathName: aString isEncoded: true) asSqueakPathName.
	^ FSDiskStore activeClass referenceFromString: decoded