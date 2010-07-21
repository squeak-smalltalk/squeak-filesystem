commit tests
testRevisionChange
	| oldRevision newRevision |
	oldRevision := fs instVarNamed: 'revision'.
	self assert: oldRevision isNil.
	
	self commit: 'a commit'.
	oldRevision := fs instVarNamed: 'revision'.
	self deny: oldRevision isNil.
	
	self commit: 'commit 2'.
	newRevision := fs instVarNamed: 'revision'.
	self deny: oldRevision = newRevision.
	self assert: (newRevision parents includes: oldRevision)