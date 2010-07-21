public
open: anObject writable: aBoolean
	| path |
	path := self resolve: anObject.
	modified
		nodeAt: path
		ifPresent: [ :node | ^ modified open: path writable: aBoolean ]
		ifAbsent: [
			aBoolean
				ifTrue: [ 
					workingCopy
						nodeAt: path
						ifPresent: [ :node | 
							self copyToModified: path.
							^ self open: anObject writable: aBoolean ]
						ifAbsent: [ ^ modified open: path writable: aBoolean ] ]
				ifFalse: [ ^ workingCopy open: path writable: aBoolean ] ]