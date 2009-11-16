comparing
isChildOf: aPath
	^ self size = (aPath size + 1) and: [aPath contains: self]