windows
G
	^ self
		filesystem: (FSWindowsFilesystem disk: 'G')
		path: FSPath root
