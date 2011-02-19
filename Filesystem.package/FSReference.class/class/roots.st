cross platform
roots
	^ Array streamContents:
		[:out |
		FSStore allRootsDo: 
			[:ea | 
			out nextPut: (self filesystem: (FSFilesystem store: ea) path: FSPath root)]]