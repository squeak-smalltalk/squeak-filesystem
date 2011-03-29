disk filesystem
onDisk
	"Answer a filesystem that represents the 'on-disk' filesystem used by the host operating system."

	^ disk ifNil: [disk := self createDiskFilesystem]