public
close
	| archive stream |
	archive := ZipArchive new.
	self root allChildren do: [ :each |
		each isFile ifTrue: [
			each readStreamDo: [ :output |
				archive 
					addString: output contents 
					as: each path printString ] ] ].
	archive writeTo: (stream := WriteStream on: ByteArray new); close.
	reference writeStreamDo: [ :output | output nextPutAll: stream contents ]