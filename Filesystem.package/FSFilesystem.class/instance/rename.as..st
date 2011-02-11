public
rename: sourcePath as: destName
	"Rename the file referenced as sourcePath  destPath.  Raise exceptions FileExists or FileDoesNotExist  if the operation fails"
	
	self
		copy: sourcePath
		ifAbsent: [self fileDoesNotExist: sourcePath]
		to: destName
		ifPresent: [self fileExists: destName]