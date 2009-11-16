showing
show: aReference 
	self push: aReference entry.
	self whileNotDoneDo: 
		[| entry ref |
		entry := self pop.
		ref := entry reference.
		entry isFile 
			ifTrue: [visitor visitFile: ref]
			ifFalse: 
				[visitor visitDirectory: ref.
				self pushAll: ref entries]]