stream-protocol
copyFrom: from to: position
	self deprecated: 'Use at: from read: aCollection startingAt: 1 count: position - from + 1  instead'.
	^ bytes copyFrom: from to: position