accessing
packedObjectWithSignature: aGitObjectSignature
	| object |
	self packsDo: [ :each |
		object := each objectWithSignature: aGitObjectSignature.
		object ifNotNil: [^ object] ].
	^ nil