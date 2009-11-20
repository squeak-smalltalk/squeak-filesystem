windows
J
	^ self
		filesystem: (FSWindowsFilesystem disk: 'J')
		path: FSPath root
