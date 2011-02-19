windows
C
	^ self filesystem: (FSFilesystem store: (FSWindowsStore disk: 'C')) path: FSPath root