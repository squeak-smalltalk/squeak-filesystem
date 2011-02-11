navigating
childDirectories
	"Return all the directories (by opposition to files) contained in the receiver"
	^self children select: [ :each | each isDirectory ]