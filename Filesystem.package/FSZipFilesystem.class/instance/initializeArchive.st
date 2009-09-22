private
initializeArchive
	(archive members select: [ :ea | ea isDirectory ]) do: 
		[ :ea | 
		directories add: (self pathFromMember: ea).
		archive removeMember: ea ].
	archive members do: [ :ea | directories add: (self pathFromMember: ea) parent ]