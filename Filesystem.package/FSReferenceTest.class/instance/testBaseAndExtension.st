tests
testBaseAndExtension
	"self debug: #testBaseAndExtension"
	| ref |
	ref := filesystem referenceTo: 'plonk/griffle.taz'.
	self assert: ref base = 'griffle'.
	self assert: ref extension = 'taz'.
	ref := filesystem referenceTo: 'plonk/griffle.taz.txt'.
	self assert: ref base = 'griffle'.
	self assert: ref extension = 'taz.txt'.