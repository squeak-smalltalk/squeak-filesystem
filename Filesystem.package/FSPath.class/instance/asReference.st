converting
asReference
	^ FSReference 
		filesystem: FSDiskFilesystem current
		path: (FSPath defaultDirectory resolve: self)