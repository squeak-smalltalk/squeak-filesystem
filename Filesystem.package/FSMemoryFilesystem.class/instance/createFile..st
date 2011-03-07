private
createFile: path 
	^ self 
		nodeAt: path parent
		ifPresent: 
			[ :node | 
			(self basicIsDirectory: node)
				ifTrue: [ self basicCreateFile: path parentNode: node ] ]
		ifAbsent: [ self signalDirectoryDoesNotExist: path parent ]