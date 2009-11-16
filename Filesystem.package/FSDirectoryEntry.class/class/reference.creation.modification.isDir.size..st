as yet unclassified
reference: ref creation: cTime modification: mTime isDir: aBoolean size: anInteger
	^ self basicNew
		initializeWithRef: ref
		creation: cTime
		modification: mTime
		isDir: aBoolean
		size: anInteger