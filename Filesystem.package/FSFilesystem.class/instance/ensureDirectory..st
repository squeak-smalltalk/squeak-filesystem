public
ensureDirectory: aPath
	(self isDirectory: aPath) ifFalse: [self createDirectory: aPath]