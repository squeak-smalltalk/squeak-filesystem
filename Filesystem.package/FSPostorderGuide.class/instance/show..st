showing
show: aReference 
	self pushTraverse: aReference.
	self whileNotDoneDo: [self pop sendTo: self ]