private
userName
	| pathString |
	pathString := SecurityManager default secureUserDirectory.
	^ (FSDiskFilesystem current stringToReference: pathString) basename