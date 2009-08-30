public
copy: sourcePath to: destPath
	self
		copy: sourcePath
		ifAbsent: [self fileDoesNotExist: sourcePath]
		to: destPath
		ifPresent: [self fileExists: destPath]