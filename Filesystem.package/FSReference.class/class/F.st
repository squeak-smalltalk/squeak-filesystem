windows
F
	^ self
		filesystem: (FSWindowsFilesystem disk: 'F')
		path: FSPath root
