private
createFile: path 
	^ self 
		nodeAt: path parent
		ifPresent: 
			[ :node | 
			(self basicIsDirectory: node) ifTrue: 
				[ node data 
					at: path basename
					put: FSMemoryNode newFile ] ]
		ifAbsent: [ self directoryDoesNotExist: path parent ]