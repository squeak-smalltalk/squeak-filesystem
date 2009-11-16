private
basicCopy: source ifAbsent: aBlock to: destination ifPresent: pBlock 
	self 
		nodeAt: source
		ifPresent: 
			[ :bytes | 
			(self basicIsFile: bytes) ifFalse: aBlock.
			self 
				nodeAt: destination parent
				ifPresent: 
					[ :dict | 
					(self basicIsDirectory: dict) ifFalse: [ self invalidDirectory: destination parent ].
					(dict includesKey: destination basename) ifTrue: pBlock.
					dict 
						at: destination basename
						put: bytes copy ]
				ifAbsent: [ self invalidDirectory: destination parent ] ]
		ifAbsent: aBlock