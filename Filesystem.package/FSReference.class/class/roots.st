cross platform
roots
	^ Array streamContents:
		[:out | FSFilesystem putAllRootsOn: out]