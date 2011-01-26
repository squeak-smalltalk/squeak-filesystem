navigating
resolve: anObject
	"Return a path in which the argument has been interpreted in the context of the receiver. Note that different argument types have different resolution semantics, i.e. resolving a string will happen it to the receiver, resolving a path ."
	
	^ anObject asResolvedBy: self