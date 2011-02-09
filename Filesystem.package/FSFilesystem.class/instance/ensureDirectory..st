public
ensureDirectory: aPath
	"Make sure that all the directories contained in the argument path exist or are created."
	
	(self isDirectory: aPath)
		ifTrue: [ ^ self ].
	self ensureDirectory: aPath parent.
	self createDirectory: aPath