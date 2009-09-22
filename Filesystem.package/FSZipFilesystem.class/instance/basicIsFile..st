private
basicIsFile: anObject 
	^ (anObject isKindOf: ArchiveMember) and: [anObject isDirectory not]