private
createFile: path 
	^ self 
		entryAt: path parent
		ifPresent: 
			[ :dict | 
			(self basicIsDirectory: dict) ifTrue: 
				[ dict 
					at: path basename
					put: ByteArray new ] ]
		ifAbsent: [ self invalidDirectory: path parent ]