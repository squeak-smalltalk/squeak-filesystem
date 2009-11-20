windows
C
	^ self
		filesystem: (FSWindowsFilesystem disk: 'C')
		path: FSPath root
