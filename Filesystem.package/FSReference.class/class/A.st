windows
A
	^ self
		filesystem: (FSWindowsFilesystem disk: 'A')
		path: FSPath root
