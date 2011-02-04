instance creation
withData: data
	| now |
	now := DateAndTime now.
	^ self
		creation: now
		modification: now
		data: data