tests
testObjectWithSignature
	| initialBlob loadedBlob blobSignature |
	initialBlob := GitBlob bytes: 'test'.
	repository storeObject: initialBlob.
	loadedBlob := repository objectWithSignature: initialBlob signature.
	self assert: initialBlob = loadedBlob