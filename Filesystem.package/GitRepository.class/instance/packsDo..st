enumerating
packsDo: aBlock
	| dir shortName |
	dir := self baseDir resolve: 'objects/pack'.
	dir childFiles 
		do: [ :each | (each basename endsWith: '.idx')
			ifTrue: [ shortName := each basename allButLast: 4.
					aBlock value: (GitPack new basePath: (dir fullNameFor: shortName))]]