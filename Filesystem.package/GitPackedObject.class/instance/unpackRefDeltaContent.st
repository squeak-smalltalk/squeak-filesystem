accessing
unpackRefDeltaContent
	| s delta base |
	s := (GitObjectSignature loadFrom: file) resolve.
	delta := self readDelta.
	base := pack packedObjectAt: s.
	self applyDelta: delta to: base.