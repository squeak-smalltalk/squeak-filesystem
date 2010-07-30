initialize-release
initializeWithReference: aReference
	reference := aReference.
	reference species = FSReference
		ifTrue: [ ^ self messageText: reference path asString ].
	reference species = FSPath
		ifTrue: [ ^ self messageText: reference asString ].
	self messageText: reference printString