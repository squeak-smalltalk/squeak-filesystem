internal
basicCommit: aMessage to: branchName
	| commit stamp parents |
	self updateWorkingCopyWithChanges.
	stamp := GitStamp now.
	commit := GitCommit
		withTree: (self recursiveUpdateTrees: workingCopy root)
		message: aMessage
		author: stamp
		committer: stamp.
	parents := OrderedCollection new.
	revision ifNotNil: [ parents add: revision ].
	commit parents: parents.
	repository storeObject: commit.
	repository updateRef: 'refs/heads/' , branchName to: commit signature.
	revision := commit.
	self reset