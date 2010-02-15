navigating
allDirectories
	^ self allChildren reject: [:each | each isFile]