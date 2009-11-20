windows
H
	^ self
		filesystem: (FSWindowsFilesystem disk: 'H')
		path: FSPath root
