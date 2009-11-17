public
ensureDirectory: aPath
	(self isDirectory: aPath) ifFalse: 
		[self ensureDirectory: aPath parent.
		self createDirectory: aPath]