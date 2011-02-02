instance creation
currentClass
	"Return the class of the currently running file system."
	
	^ Smalltalk os platformName = 'Win32' 
		ifTrue: [FSWindowsFilesystem]
		ifFalse: [FSUnixFilesystem]