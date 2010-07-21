internal
copyToMemory: aGitTreeEntry at: aPath
	| entryPath entryObject |
	entryPath := aPath / (aGitTreeEntry entryName).
	entryObject := repository objectWithSignature: aGitTreeEntry objectSignature.
	objectMap at: entryPath put: entryObject.
	
	aGitTreeEntry mode = (GitTreeEntry dirMode)
		ifTrue: [
			workingCopy createDirectory: entryPath.
			entryObject entries do: [ :entry | self copyToMemory: entry at: entryPath ] ]
		ifFalse: [
			workingCopy createFile: entryPath.
			(workingCopy root resolve: entryPath)
				writeStreamDo:	[ :stream | stream nextPutAll: entryObject bytes ] ]