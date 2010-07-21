internal
updateWorkingCopyWithChanges
	| workingRef |
	deletions do: [ :aPath |
		(workingCopy root resolve: aPath) delete.
		objectMap removeKey: aPath ].
	modified root children do: [ :ref | 
		workingRef := workingCopy root resolve: ref path.
		workingRef exists ifTrue: [ workingRef delete ].
		ref copyAllTo: workingRef ].
	self recursiveBuildAndStoreBlobs: modified root