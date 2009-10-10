tests
testDirectory
	| path |
	path := FSPath with: 'plonk'.
	filesystem createDirectory: path.
	self assert: (filesystem exists: path).
	self assert: (filesystem isDirectory: path).
	self deny: (filesystem isFile: path).
	filesystem delete: path.
	self deny: (filesystem exists: path)