initialize-release
createFilesystem
	| ref |
	ref := FSMemoryFilesystem new referenceTo: 'fs.zip'. 
	^ (FSZipFilesystem atReference: ref)
		open;
		yourself