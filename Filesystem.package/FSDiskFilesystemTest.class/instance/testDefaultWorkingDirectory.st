tests
testDefaultWorkingDirectory
	
	| ref |
	ref := filesystem referenceTo: filesystem workingDirectory.
	self assert: (SmalltalkImage current imagePath beginsWith: ref asString).
	self assert: (SmalltalkImage current imagePath = ref asString).