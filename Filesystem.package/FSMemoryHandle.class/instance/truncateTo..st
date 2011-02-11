public
truncateTo: anInteger
	node := reference filesystem truncateFile: reference path to: anInteger.
	size := anInteger