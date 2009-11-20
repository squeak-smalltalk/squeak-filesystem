windows
Q
	^ self
		filesystem: (FSWindowsFilesystem disk: 'Q')
		path: FSPath root
