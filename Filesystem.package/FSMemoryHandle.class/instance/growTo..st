private
growTo: anInteger
	bytes := reference filesystem 
		growFile: reference path
		to: (anInteger + self sizeIncrement)