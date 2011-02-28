not validating instance creation
with: aString
	"Return a relative path of the given string. Pay attention that the argument is not parsed; it is the name of a single path element, and path separators in it do not have special meaning."
	
	"(FSPath with: '/parent/child/') isRelative 
		returns true
	Because this is a relative path to a file or directory named '/parent/child/'. In bash: \/parent\/child\/"
	
	| inst |
	inst := self new: 1.
	inst at: 1 put: aString.
	^ inst