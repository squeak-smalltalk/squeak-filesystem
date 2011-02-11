navigating
childFiles
	"Return the direct children (files and folders) of the receiver."
	^self children select: [ :each | each isFile ]