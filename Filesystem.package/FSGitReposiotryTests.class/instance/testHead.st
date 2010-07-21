tests
testHead
	| head fsOnHead |
	head := basicRepository objectWithSignature: (basicRepository resolveRef: 'HEAD').
	fsOnHead := repository head.
	self assert: fsOnHead species = GitFS.
	self assert: head = (fsOnHead instVarNamed: 'revision')