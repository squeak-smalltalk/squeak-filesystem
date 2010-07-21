private
growFile: anObject to: anInteger 
	^ self replaceFile: anObject in:
		[:bytes |
		(bytes class new: anInteger)
			replaceFrom: 1 to: bytes size with: bytes startingAt: 1;
			yourself]