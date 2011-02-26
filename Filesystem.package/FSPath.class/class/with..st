not validating instance creation
with: aString
	"Return a relative path of the given string. Pay attention that the argument is not parsed so provided meaningfull value."
	
	"(FSPath with: '/parent/child/') isRelative 
		returns true
	Because this is a relative path to '/parent/child'. In bash: /\parent\/child\/"
	
	| inst |
	inst := self new: 1.
	inst at: 1 put: aString.
	^ inst