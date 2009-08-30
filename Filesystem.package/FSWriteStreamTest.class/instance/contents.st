accessing
contents
	^ filesystem 
		entryAt: FSPath / 'giffle'
		ifPresent: [:bytes | bytes]
		ifAbsent: [self signalFailure: 'No file!']