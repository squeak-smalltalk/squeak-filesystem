instance creation
withData: data
	| now |
	now := Time totalSeconds.
	^ self
		creation: now
		modification: now
		data: data