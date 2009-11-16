as yet unclassified
testCreationTime
	| creation |
	creation := self entry creation.
	self assert: creation class = DateAndTime.
	