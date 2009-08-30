printing
printOn: aStream delimiter: aCharacter
	self isRoot ifTrue: [aStream nextPut: $/. ^ self].
	self isWorkingDirectory ifTrue: [aStream nextPut: $.. ^ self].
	
	(1 to: self size)
			do: [:index | aStream nextPutAll: (self at: index)]
			separatedBy: [aStream nextPut: aCharacter]