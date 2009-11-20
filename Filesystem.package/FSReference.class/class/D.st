windows
D
	^ self
		filesystem: (FSWindowsFilesystem disk: 'D')
		path: FSPath root
