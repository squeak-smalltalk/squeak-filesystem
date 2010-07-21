accessing
unpackContentType: type
	type = 1 "OBJ_COMMIT" ifTrue: [decodeClass := GitCommit. ^ self unpackSimpleContent].
	type = 2 "OBJ_TREE" ifTrue: [decodeClass := GitTree. ^ self unpackSimpleContent].
	type = 3 "OBJ_BLOB" ifTrue: [decodeClass := GitBlob. ^ self unpackSimpleContent].
	type = 4 "OBJ_TAG" ifTrue: [self error: 'Packed tags aren''t supported yet.'].
	type = 6 "OBJ_OFS_DELTA" ifTrue: [^ self unpackOfsDeltaContent].
	type = 7 "OBJ_REF_DELTA" ifTrue: [^ self unpackRefDeltaContent].
	self error: 'Invalid pack object type ', type printString.