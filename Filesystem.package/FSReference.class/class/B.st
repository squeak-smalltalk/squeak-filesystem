windows
B
	^ self
		filesystem: (FSWindowsFilesystem disk: 'B')
		path: FSPath root
