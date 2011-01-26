navigating
directories
	^ self children reject: [:each | each isFile]