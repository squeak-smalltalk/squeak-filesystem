as yet unclassified
loadKey: k value: v
	k = 'tree' ifTrue: [tree := repository objectNamed: v. ^ self].
	k = 'parent' ifTrue: [
		parents ifNil: [parents := OrderedCollection new].
		parents add: (repository objectNamed: v).
		^ self].
	k = 'author' ifTrue: [author := GitStamp fromString: v. ^ self].
	k = 'committer' ifTrue: [committer := GitStamp fromString: v. ^ self].
	"Otherwise it's treated generically."
	^ super loadKey: k value: v