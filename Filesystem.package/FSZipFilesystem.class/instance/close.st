public
close
	reference fileStreamDo: [:s | s ascii. archive writeTo: s].
	archive close.
	archive := nil