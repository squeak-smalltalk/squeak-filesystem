deprecated
working
	"Returns a reference to the directory from where the image was launched"
	self deprecated: 'Use workingDirectory' on:  '11 February 2011' in: 'Pharo1.3'.
	"we renamed workingDirectory as workingDirectoryPath and 
	working as workingDirectory"
	^ self referenceTo: self workingDirectoryPath