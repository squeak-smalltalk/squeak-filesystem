private
directoriesAt: aPath do: doBlock 
	directories do: [ :ea | (ea isChildOf: aPath) ifTrue: [ doBlock value: ea ] ]