resolving
resolveString: aString
	| decoded |
	decoded := (FilePath pathName: aString isEncoded: true) asSqueakPathName.
	^ FSDiskFilesystem current stringToReference: decoded.