as yet unclassified
createFilesystem
	| ref |
	ref := FSDiskFilesystem current referenceTo: 'fs.zip'. 
	^ FSZipFilesystem atReference: ref