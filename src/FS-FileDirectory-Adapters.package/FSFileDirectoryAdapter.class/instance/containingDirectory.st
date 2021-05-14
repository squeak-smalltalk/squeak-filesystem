enumeration
containingDirectory
	reference isRoot ifTrue: [^ FileDirectory root].
	^ FSFileDirectoryAdapter on: reference parent