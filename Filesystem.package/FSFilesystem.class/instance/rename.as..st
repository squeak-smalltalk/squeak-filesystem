public
rename: sourcePath as: destName
	"Rename the file referenced as sourcePath to destPath.  Raise exceptions 
	FileExists or FileDoesNotExist  if the operation fails"
	
	^ self
		rename: sourcePath
		ifAbsent: [store fileDoesNotExist: sourcePath]
		as: destName
		ifPresent: [self fileExists: destName]