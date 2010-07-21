initialize-release
initializeOn: aGitRepository
	super initialize.
	workingCopy := FSMemoryFilesystem new.
	modified := FSMemoryFilesystem new.
	objectMap := Dictionary new.
	deletions := Set new.
	repository := aGitRepository.
	revision ifNil: [ revision := repository head ].
	self initWorkingCopy