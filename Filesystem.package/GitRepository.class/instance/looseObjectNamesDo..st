enumerating
looseObjectNamesDo: aBlock 
	| root hash |
	root := self baseDir resolve: 'objects'.
	root childDirectories do: 
		[ :dirReference | (self isObjectDirectory: dirReference)
			ifTrue: [ dirReference childFiles do: 
				[ :fileReference | 
				hash := dirReference basename , fileReference basename.
				aBlock value: (GitObjectSignature from: hash) ] ] ]