public
truncateTo: anInteger
	Primitives setPosition: id to: (anInteger - 1 clampLow: 0).
	Primitives truncate: id to: anInteger.
	self reopen