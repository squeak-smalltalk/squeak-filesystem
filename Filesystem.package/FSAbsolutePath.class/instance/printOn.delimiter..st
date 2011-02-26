printing
printOn: aStream delimiter: aCharacter
	aStream nextPut: aCharacter.
	^ super printOn: aStream delimiter: aCharacter 