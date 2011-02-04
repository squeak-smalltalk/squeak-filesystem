private
truncateFile: anObject to: anInteger 
	^ self 
		replaceFile: anObject
		in: [ :node | node updateData: [:data | data first: anInteger] ]