tests
testRoot
	
	"self debug: #testRoot"
	| root |
	root := FSDiskFilesystem root.
	self assert: root printString = '/'.
	"root inspect"