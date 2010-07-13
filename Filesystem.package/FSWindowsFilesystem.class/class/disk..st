instance creation
disk: aString 
	^ Disks 
		at: aString
		ifAbsentPut: [ self newForDisk: aString ]