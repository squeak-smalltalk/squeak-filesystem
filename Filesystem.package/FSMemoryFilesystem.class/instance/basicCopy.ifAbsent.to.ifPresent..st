private
basicCopy: source ifAbsent: aBlock to: destination ifPresent: pBlock 
	self 
		nodeAt: source
		ifPresent: 
			[ :srcNode | 
			(self basicIsFile: srcNode) ifFalse: [ aBlock value ].
			self 
				nodeAt: destination parent
				ifPresent: 
					[ :destNode | 
					(self basicIsDirectory: destNode) ifFalse: [ self signalDirectoryDoesNotExist: destination parent ].
					(destNode data includesKey: destination basename) ifTrue: [ pBlock value ].
					destNode data 
						at: destination basename
						put: (FSMemoryNode withData: srcNode data copy) ]
				ifAbsent: [ self signalDirectoryDoesNotExist: destination parent ] ]
		ifAbsent: aBlock