instance creation
with: aString
	| inst |
	inst := self new: 1.
	inst at: 1 put: aString.
	^ inst