accessing
resolveLooseRef: refPath
	| target |
	target := [ 
		(self baseDir resolve: refPath) 
			readStreamDo: [ :stream | stream contents asString ] ]
		on: FSFileDoesNotExist 
		do: [:ex | ^ nil].
	(target beginsWith: 'ref:') ifTrue: [^ self resolveRef: (target allButFirst: 4) withBlanksTrimmed].
	^ GitObjectSignature from: target substrings first "Ignore other junk after the hash."