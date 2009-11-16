showing
show: aReference 
	| ref |
	work add: aReference.
	self whileNotDoneDo: 
		[ ref := work removeFirst.
		ref isFile 
			ifTrue: [ visitor visitFile: ref ]
			ifFalse: 
				[ visitor visitDirectory: ref.
				work addAll: ref children ] ]