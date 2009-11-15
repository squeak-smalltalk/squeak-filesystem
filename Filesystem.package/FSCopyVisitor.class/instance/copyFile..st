as yet unclassified
copyFile: aReference
	| copy |
	copy := dest resolve: (aReference relativeTo: source).
	aReference copyTo: copy