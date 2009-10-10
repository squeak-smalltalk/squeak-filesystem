tests
testFileStream
	| path out |
	path := FSPath with: 'gooly'.
	out := filesystem openFileStream: path writable: true.
	out close.
	self assert: (filesystem exists: path).
	self deny: (filesystem isDirectory: path).
	self assert: (filesystem isFile: path).
	filesystem delete: path.
	self deny: (filesystem exists: path)