comparing
= anObject
	(anObject isMemberOf: FSFileDirectoryAdapter) ifFalse: [^ false].
	^ reference = anObject asFSReference