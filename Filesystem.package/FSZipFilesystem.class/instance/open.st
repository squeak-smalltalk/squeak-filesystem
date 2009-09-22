public
open
	archive := ZipArchive new.
	reference exists ifTrue:
		[reference fileStreamDo: [:in | archive readFrom: in].
		self initializeArchive]