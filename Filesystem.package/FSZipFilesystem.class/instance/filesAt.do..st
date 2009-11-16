private
filesAt: aPath do: doBlock 
	| path |
	archive members do: 
		[ :ea | 
		path := self stringToPath: ea fileName.
		(path isChildOf: aPath) ifTrue: [ doBlock value: ea ] ]