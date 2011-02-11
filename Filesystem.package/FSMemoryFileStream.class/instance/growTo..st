private
growTo: anInteger
	collection := (reference filesystem growFile: reference path to: anInteger) data.
	writeLimit := collection size.
