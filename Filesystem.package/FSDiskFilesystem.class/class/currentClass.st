instance creation
currentClass
	^ Smalltalk os platformName = 'Win32' 
		ifTrue: [FSWindowsFilesystem]
		ifFalse: [FSUnixFilesystem]