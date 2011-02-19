as yet unclassified
disks
	^ Array streamContents: [:out | self currentDisksDo: [:ea | out nextPut: ea]]