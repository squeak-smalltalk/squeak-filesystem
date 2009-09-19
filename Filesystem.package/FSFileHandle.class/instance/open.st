public
open
	id := reference filesystem 
		basicOpen: reference path
		writable: writable.
	id ifNil: [self error: 'Unable to open file ', reference printString]