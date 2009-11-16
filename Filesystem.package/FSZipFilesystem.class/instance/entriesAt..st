public
entriesAt: anObject
	| path entry childPath |
	path := self resolve: anObject.
	^ Array streamContents:
		[:out |
		self
			directoryAt: path
			ifAbsent: [self invalidDirectory: path]
			nodesDo: 
				[:node | 
				childPath := node class = FSPath ifTrue: [node] ifFalse: [node fileName].
				entry := self 
					entryFromNode: node 
					atPath: childPath.
				out nextPut: entry]]