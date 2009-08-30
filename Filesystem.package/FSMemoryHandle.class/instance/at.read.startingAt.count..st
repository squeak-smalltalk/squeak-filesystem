public
at: index read: aCollection startingAt: start count: count 
	| stop |
	stop := (start + count - 1) min: (start + size - 1).
	aCollection 
		replaceFrom: start
		to: stop
		with: bytes
		startingAt: index.
	^ stop - start + 1