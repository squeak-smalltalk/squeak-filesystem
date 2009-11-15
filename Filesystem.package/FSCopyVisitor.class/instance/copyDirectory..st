as yet unclassified
copyDirectory: aReference
	| directory |
	directory := dest resolve: (aReference relativeTo: source).
	directory ensureDirectory