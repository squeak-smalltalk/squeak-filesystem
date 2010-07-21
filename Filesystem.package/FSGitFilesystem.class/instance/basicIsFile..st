private
basicIsFile: anEntry
	^ (modified basicIsFile: anEntry)
		or: [ workingCopy basicIsFile: anEntry ]