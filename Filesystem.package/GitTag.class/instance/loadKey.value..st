as yet unclassified
loadKey: k value: v
	k = 'object' ifTrue: [object := repository objectNamed: v. ^ self].
	k = 'type' ifTrue: [self assert: object typeCode = v. ^ self].
	k = 'tag' ifTrue: [name := v. ^ self].
	k = 'tagger' ifTrue: [tagger := GitStamp fromString: v. ^ self].
	"Otherwise it's treated generically."
	^ super loadKey: k value: v