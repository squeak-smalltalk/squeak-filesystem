windows
R
	^ self
		filesystem: (FSWindowsFilesystem disk: 'R')
		path: FSPath root
