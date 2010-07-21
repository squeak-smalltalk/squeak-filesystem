initialize-release
loadFrom: aStream
	mode := Integer readFrom: (ReadStream on: (aStream upTo: Character space asInteger) asString) base: 8.
	entryName := (aStream upTo: 0) asString.
	objectSignature := GitObjectSignature loadFrom: aStream.
	^self