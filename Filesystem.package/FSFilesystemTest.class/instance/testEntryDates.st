tests
testEntryDates
	| path created modified |
	path := FSPath with: 'gooly'.
	
	[	(filesystem writeStreamOn: path) nextPutAll: 'hello'; close.
		(Delay forSeconds: 2) wait.  
		(filesystem writeStreamOn: path) nextPutAll: 'world'; close.

		created := (filesystem entryAt: path) creation.
		modified := (filesystem entryAt: path) modification.
		
		self assert: created < modified.
		self halt
	] ensure: [ filesystem delete: path ]
