accessing
objectNamed: aHexHash
	repository ifNil: [self error: 'instance variable #repository needs to be initialized.'].
	^self objectWithSignature: (GitObjectSignature from: aHexHash)