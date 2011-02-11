accessing
contents
	^ filesystem 
		nodeAt: FSPath / 'giffle'
		ifPresent: [:node | node data]
		ifAbsent: [self signalFailure: 'No file!']