private
pathFromMember: anArchiveMember
	| path |
	path := FSPath root resolve: anArchiveMember fileName.
	^ path basename isEmpty
		ifTrue: [ path parent ]
		ifFalse: [ path ]