accessing
objectWithSignature: aGitObjectSignature
	repository ifNil: [self error: 'Instance variable #repository needs to be initialized.'].
	
	^ [ self objectFrom: (repository looseObjectStreamAt: aGitObjectSignature) ] 
		on: FSFileDoesNotExist
		do: [ :ex | ex return: (repository packedObjectWithSignature: aGitObjectSignature) ]