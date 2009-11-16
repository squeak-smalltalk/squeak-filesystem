accessing
contents
	^ filesystem 
		nodeAt: FSPath / 'giffle'
		ifPresent: [:bytes | bytes]
		ifAbsent: [self signalFailure: 'No file!']