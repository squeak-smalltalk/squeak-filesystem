accessing
baseDir
	(reference basename endsWith: '.git')
		ifTrue: [^reference]
		ifFalse: [^reference resolve: '.git']