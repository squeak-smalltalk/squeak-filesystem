as yet unclassified
disk: aString 
	^ Disks 
		at: aString
		ifAbsentPut: [ self newForDisk: aString ]