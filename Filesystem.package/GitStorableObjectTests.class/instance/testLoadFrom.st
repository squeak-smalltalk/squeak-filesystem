class-tests
testLoadFrom
	| stream object loadedObject repository clazzes |
	repository := GitRepository on: (FSMemoryFilesystem new root resolve: 'repo').
	clazzes := GitStorableObject allSubclasses reject: [:each | each typeCode isNil].
	clazzes do:
		[:each | object := self buildMockFor: each.
		repository storeObject: object.
		stream := repository looseObjectStreamAt: object signature.
		loadedObject := GitStorableObject loadFrom: stream from: repository. 
		self assert: loadedObject isNil not.
		self assert: loadedObject species = (object species).
		self assert: loadedObject = object]