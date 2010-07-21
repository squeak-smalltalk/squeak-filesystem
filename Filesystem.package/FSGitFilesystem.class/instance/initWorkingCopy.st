initialize-release
initWorkingCopy
	revision ifNil: [ ^ self ].
	
	revision tree entries do: [ :entry | 
		self copyToMemory: entry at: workingCopy root path ].
	objectMap at: FSPath root put: revision tree