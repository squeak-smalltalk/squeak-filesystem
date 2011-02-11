accessing
updateData: aBlock
	^ self class
		creation: creation
		modification: DateAndTime now
		data: (aBlock value: data)