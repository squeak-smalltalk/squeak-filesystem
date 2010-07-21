comparing
<= aGitTreeEntry
	"For sorting reasons, directories are compared
	with a virtual slash appended."
	| myTail otherTail |
	myTail := otherTail := ''.
	self mode = (GitTreeEntry dirMode)
		ifTrue: [ myTail := '/' ].
	aGitTreeEntry mode = (GitTreeEntry dirMode)
		ifTrue: [otherTail := '/' ].
	
	^ self entryName, myTail <= (aGitTreeEntry entryName, otherTail)