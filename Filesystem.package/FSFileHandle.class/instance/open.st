public
open
	id := reference filesystem 
		basicOpen: reference path
		writable: writable.
	id ifNil: 
		[(writable or: [reference exists])
			ifTrue: [self error: 'Unable to open file ', reference printString]
			ifFalse: [FSFileDoesNotExist signalWith: reference]]