navigating
files
	"Return all the files (by opposition to folders) contained in the receiver"
	^self children select: [:each | each isFile]