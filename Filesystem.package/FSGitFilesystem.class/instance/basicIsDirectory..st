private
basicIsDirectory: anEntry
	^ (modified basicIsDirectory: anEntry)
		or: [ workingCopy basicIsDirectory: anEntry ]