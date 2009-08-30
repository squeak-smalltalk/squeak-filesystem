as yet unclassified
currentClass
	^ SmalltalkImage current platformName = 'Win32' 
		ifTrue:[FSWindowsFilesystem]
		ifFalse: [FSUnixFilesystem]