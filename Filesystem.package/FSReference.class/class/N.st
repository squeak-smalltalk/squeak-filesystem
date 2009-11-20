windows
N
	^ self
		filesystem: (FSWindowsFilesystem disk: 'N')
		path: FSPath root
