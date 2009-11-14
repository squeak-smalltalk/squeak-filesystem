showing
show: aReference 
	work add: aReference.
	self whileNotDoneDo: 
		[| ref |
		ref := self pop.
		ref isFile
			ifTrue: [visitor visitFile: ref]
			ifFalse:
				[visitor visitDirectory: ref.
				self pushAll: ref entries]]