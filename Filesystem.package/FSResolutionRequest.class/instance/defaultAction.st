as yet unclassified
defaultAction
	| filedir ref |
	filedir := UIManager default chooseDirectory: 'Where is ', origin, '?'.
	ref := filedir ifNotNil: [FSDiskFilesystem current referenceTo: filedir fullName].
	self resume: ref