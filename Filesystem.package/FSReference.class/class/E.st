windows
E
	^ self
		filesystem: (FSWindowsFilesystem disk: 'E')
		path: FSPath root
