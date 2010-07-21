initialize-release
initializeOn: anFSReference
	repository := GitRepository on: anFSReference.
	repository gitInitialize 