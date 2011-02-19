windows
A
	^ self
		filesystem: (FSFilesystem store: (FSWindowsStore disk: 'A'))
		path: FSPath root
