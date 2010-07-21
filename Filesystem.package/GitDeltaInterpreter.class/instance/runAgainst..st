as yet unclassified
runAgainst: aByteArray
	source := aByteArray.
	
	commands := ReadStream on: instructions.
	source size = self readVariableInteger ifFalse: [self error: 'Delta source size mismatch'].
	output := WriteStream on: (ByteArray new: self readVariableInteger).
	self run.

	^ output contents