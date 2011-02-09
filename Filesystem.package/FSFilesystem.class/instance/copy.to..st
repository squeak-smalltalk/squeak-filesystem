public
copy: sourcePath to: destPath
	"Copy the file referenced as sourcePath to the destination referred as destPath.  Raise exceptions FileExists or FileDoesNotExist  if the operation fails"
	
	self
		copy: sourcePath
		ifAbsent: [self fileDoesNotExist: sourcePath]
		to: destPath
		ifPresent: [self fileExists: destPath]