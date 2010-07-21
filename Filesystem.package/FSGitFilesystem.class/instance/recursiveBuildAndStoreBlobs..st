internal
recursiveBuildAndStoreBlobs: aDirReference
	| blob |
	aDirReference children do: [ :ref |
		ref isFile 
			ifTrue: [ 
				blob := GitBlob bytes: (ref readStream contents).
				repository storeObject: blob.
				objectMap at: ref path put: blob ]
			ifFalse: [ self recursiveBuildAndStoreBlobs: ref ] ]