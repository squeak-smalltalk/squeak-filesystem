as yet unclassified
testModificationTime
	| modification |
	modification := self entry modification.
	self assert: modification class = DateAndTime.
	