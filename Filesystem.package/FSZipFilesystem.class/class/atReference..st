as yet unclassified
atReference: aReference
	| zip |
	zip := ZipArchive new.
	aReference exists ifTrue: 
		[zip readFrom: (FileStream fileNamed: aReference pathString)].
	^ self on: zip