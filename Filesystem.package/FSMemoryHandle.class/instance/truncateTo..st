public
truncateTo: anInteger
	bytes := reference filesystem truncateFile: reference path to: anInteger.
	size := anInteger