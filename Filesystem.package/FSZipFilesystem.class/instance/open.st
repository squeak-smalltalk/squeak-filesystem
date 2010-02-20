public
open
	| archive |
	reference exists
		ifFalse: [ ^ self ].
	archive := ZipArchive new.
	reference readStreamDo: [ :input |
		archive readFrom: input contents readStream.
		archive members do: [ :member |
			| ref |
			ref := self referenceTo: (self pathFromMember: member).
			member isDirectory
				ifTrue: [ ref ensureDirectory ]
				ifFalse: [
					ref parent ensureDirectory.
					ref writeStreamDo: [ :stream | member rewindData; copyRawDataTo: stream ] ] ] ]