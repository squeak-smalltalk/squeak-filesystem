instance creation
disks
	^ Disks values asArray sort: [:a :b | a printString < b printString]