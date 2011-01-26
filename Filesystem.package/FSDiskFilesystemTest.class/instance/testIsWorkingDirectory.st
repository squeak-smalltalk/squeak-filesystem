tests
testIsWorkingDirectory
	"self debug: #testIsWorkingDirectory"
	
	"why this is wrong?"
	
	self assert: (filesystem workingDirectory isWorkingDirectory)