windows
L
	^ self
		filesystem: (FSWindowsFilesystem disk: 'L')
		path: FSPath root
