accessing
versions
	| current commits |
	commits := OrderedCollection new.
	repository looseObjectNamesDo: [ :each | 
		current := repository objectWithSignature: each.
		current species = GitCommit
			ifTrue: [ commits add: current ] ].
	
	^ commits collect: [ :each |
		GitFS for: repository revision: each ] 