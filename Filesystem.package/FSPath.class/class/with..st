not validating instance creation
with: aString
	"Return a relative path of the given string. Pay attention that the argument is not validated so provided meaningfull value."
	
	| inst |
	inst := self new: 1.
	inst at: 1 put: aString.
	^ inst