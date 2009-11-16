private
basicOpen: anObject writable: aBoolean 
	| path stream |
	path := self resolve: anObject.
	^ self 
		nodeAt: path
		ifPresent: 
			[ :member | 
			stream := RWBinaryOrTextStream on: (ByteArray new: member uncompressedSize).
			member extractTo: stream.
			stream
				binary;
				contents ]
		ifAbsent: 
			[ aBoolean 
				ifFalse: [ self fileDoesNotExist: path ]
				ifTrue: [ self createFile: path ] ]