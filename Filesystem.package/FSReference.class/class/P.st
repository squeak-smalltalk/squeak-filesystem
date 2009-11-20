windows
P
	^ self
		filesystem: (FSWindowsFilesystem disk: 'P')
		path: FSPath root
