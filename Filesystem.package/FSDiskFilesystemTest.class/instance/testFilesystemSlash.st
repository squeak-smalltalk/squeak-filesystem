tests
testFilesystemSlash
	"self debug: #testFilesystemSlash"
	
	| rootSlashZorkReference |
	rootSlashZorkReference := FSDiskFilesystem / 'zork'.
	self deny: rootSlashZorkReference isRoot.
	self assert: rootSlashZorkReference base = 'zork'.
	self assert: rootSlashZorkReference basename = 'zork'.
	self assert: (FSReference / 'zork') = (FSDiskFilesystem / 'zork').