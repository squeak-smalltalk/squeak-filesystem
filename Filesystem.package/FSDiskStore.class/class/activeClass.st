as yet unclassified
activeClass
	self allSubclassesDo: [:ea | ea isActiveClass ifTrue: [^ ea]].
	^ self