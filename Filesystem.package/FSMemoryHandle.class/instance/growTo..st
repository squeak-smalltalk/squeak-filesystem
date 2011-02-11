private
growTo: anInteger
	node := reference filesystem 
		growFile: reference path
		to: (anInteger + self sizeIncrement) "huh, isn't aninteger already enough?"