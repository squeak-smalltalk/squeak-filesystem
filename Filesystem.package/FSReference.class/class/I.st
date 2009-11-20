windows
I
	^ self
		filesystem: (FSWindowsFilesystem disk: 'I')
		path: FSPath root
