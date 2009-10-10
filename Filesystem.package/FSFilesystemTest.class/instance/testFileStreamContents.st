tests
testFileStreamContents
	| path out in contents |
	
	path := FSPath with: 'gooly'.
	self delete: path.
	
	out := filesystem openFileStream: path writable: true.
	[out nextPutAll: 'gooly'] ensure: [out close].
	
	in := filesystem openFileStream: path writable: false.
	[contents := in ascii; contentsOfEntireFile] ensure: [in close].

	self assert: contents = 'gooly'