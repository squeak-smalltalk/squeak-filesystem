as yet unclassified
validate
	self object ifNil: [self error: 'Cannot have a tag without a tagged object.'].
	self name ifNil: [self error: 'Tag name is required.'].
	self tagger ifNil: [self error: 'Tagger identity is required.'].
	super validate.