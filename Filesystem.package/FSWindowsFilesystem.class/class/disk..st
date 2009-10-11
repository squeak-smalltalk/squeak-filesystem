as yet unclassified
disk: aString 
	^ Disks at: aString ifAbsent: [self error: 'No disk named: ', aString]