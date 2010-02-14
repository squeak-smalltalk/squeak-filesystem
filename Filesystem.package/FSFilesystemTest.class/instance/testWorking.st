tests
testWorking
	self assert: filesystem working filesystem = filesystem.
	self assert: filesystem working path = filesystem workingDirectory