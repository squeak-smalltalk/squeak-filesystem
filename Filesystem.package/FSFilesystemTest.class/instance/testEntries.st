tests
testEntries
	| directory entries |
	directory := 'plonk' asPath.
	filesystem createDirectory: directory.
	filesystem createDirectory: directory / 'griffle'.
	filesystem createDirectory: directory / 'bint'.
	
	self delete: directory / 'griffle'.
	self delete: directory / 'bint'.
	self delete: directory.
	
	entries := filesystem entriesAt: directory.
	self assert: entries size = 2.
	entries do:
		[:ea |
		self assert: (ea isKindOf: FSReference).
		self assert: ea parent path = (filesystem resolve: directory).
		self assert: (#('griffle' 'bint') includes: ea basename)]