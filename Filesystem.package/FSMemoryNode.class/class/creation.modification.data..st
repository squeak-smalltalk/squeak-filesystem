instance creation
creation: creation modification: modification data: data
	^ self basicNew
		initializeWithCreation: creation
		modification: modification
		data: data