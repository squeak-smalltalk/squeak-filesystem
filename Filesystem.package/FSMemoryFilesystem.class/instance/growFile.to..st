private
growFile: anObject to: anInteger 
	^ self replaceFile: anObject in: [:node |
		node updateData: [:data |
			(data class new: anInteger)
				replaceFrom: 1 to: data size with: data startingAt: 1;
				yourself ] ]