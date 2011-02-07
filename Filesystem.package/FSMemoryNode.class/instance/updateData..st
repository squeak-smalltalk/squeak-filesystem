accessing
updateData: aBlock
	^ self class
		creation: creation
		modification: Time totalSeconds
		data: (aBlock value: data)