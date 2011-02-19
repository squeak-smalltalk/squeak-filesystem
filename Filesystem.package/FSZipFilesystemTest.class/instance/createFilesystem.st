initialize-release
createFilesystem
	| ref |
	ref := FSFilesystem inMemory referenceTo: 'fs.zip'. 
	^ (FSFilesystem inZip: ref)
		open;
		yourself