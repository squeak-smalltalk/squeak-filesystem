tests
testPrintOn
	| stamp template now offsetString stream |
	now := TimeStamp now.
	stamp := self defaultStamp.
	stamp timeStamp: now.
	
	template := 
		'Homer Simpson <homer@nuke.com> ', 
		now asUnixTime asString, 
		' ',
		(now offset positive ifTrue: ['+'] ifFalse: ['-']),
		(now offset hours printString forceTo: 2 paddingStartWith: $0),
		(now offset minutes printString forceTo: 2 paddingStartWith: $0).
	
	self assert: stamp printString = template