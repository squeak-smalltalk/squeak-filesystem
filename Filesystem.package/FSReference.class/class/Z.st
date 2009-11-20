windows
Z
	^ self
		filesystem: (FSWindowsFilesystem disk: 'Z')
		path: FSPath root
