disk filesystem
onDisk
	^ disk ifNil: [disk := self createDiskFilesystem]