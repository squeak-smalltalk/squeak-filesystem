accessing
objectAt: sha1String
	| p |
	p := self packedObjectAt: sha1String.
	p ifNotNil: [^ p object].
	^ nil