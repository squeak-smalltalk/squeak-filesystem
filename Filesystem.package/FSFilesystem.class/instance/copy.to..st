public
copy: sourcePath to: destPath
	self
		copy: sourcePath
		ifAbsent: [ store fileDoesNotExist: sourcePath ]
		to: destPath
		ifPresent: [ store fileExists: destPath ]