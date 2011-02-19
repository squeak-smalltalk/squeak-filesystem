navigating
relativeToReference: aReference
	"Return the path of the receiver relative to aReference. Typically if the receiver represents child and aReference  /parent/child/grandChildren, returns child/grandChildren"
	
	^ path relativeTo: aReference path