internal
existingTreeEntriesFor: anFSReference
	| entries |
	entries := OrderedCollection new.
	
	anFSReference children do: [ :ref |
		entries add:
			(GitTreeEntry
				entryName: ref basename
				mode: (GitTreeEntry modeFor: ref)
				objectSignature: (objectMap at: ref path) signature) ].
		
	^ entries