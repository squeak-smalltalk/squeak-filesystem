accessing
packedObjectAt: sha1String
	| i o |
	i := self tableIndexForSha: sha1String.
	i ifNil: [^ nil].
	o := self offsetAt: i.
	^ self packedObjectAtOffset: o