as yet unclassified
growTo: anInteger
	collection := reference filesystem growFile: reference path to: anInteger.
	writeLimit := collection size.
