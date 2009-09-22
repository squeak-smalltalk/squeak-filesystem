initialize-release
createFilesystem
	| ref |
	ref := FSDiskFilesystem current referenceTo: 'fs.zip'. 
	^ (FSZipFilesystem atReference: ref)
		open;
		yourself