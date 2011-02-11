public
rename: sourcePath as: destName
	"Rename the file referenced as sourcePath to destPath.  Raise exceptions FileExists or FileDoesNotExist  if the operation fails"
	
	^ self
		rename: sourcePath
		ifAbsent: [self nodeDoesNotExist: sourcePath]
		as: destName
		ifPresent: [self nodeExists: destName]