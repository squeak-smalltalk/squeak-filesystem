windows
S
	^ self
		filesystem: (FSWindowsFilesystem disk: 'S')
		path: FSPath root
