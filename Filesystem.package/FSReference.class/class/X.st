windows
X
	^ self
		filesystem: (FSWindowsFilesystem disk: 'X')
		path: FSPath root
