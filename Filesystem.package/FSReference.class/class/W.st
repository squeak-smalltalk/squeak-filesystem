windows
W
	^ self
		filesystem: (FSWindowsFilesystem disk: 'W')
		path: FSPath root
