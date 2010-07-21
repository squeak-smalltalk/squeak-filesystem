internal
copyToModified: aPath
	| ref |
	ref := modified root resolve: aPath.
	ref parent ensureDirectory.
	(workingCopy root resolve: aPath) copyTo: ref