instance creation
current
	"Return the current file system. The pattern is that the user should not explicitly refers to subclass of FSDiskFileSystem but just use FSDiskFileSystem current."
	^ self currentClass default