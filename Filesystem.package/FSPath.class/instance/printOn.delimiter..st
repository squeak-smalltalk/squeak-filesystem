printing
printOn: aStream delimiter: aCharacter
	self isRoot ifTrue: [aStream nextPut: aCharacter. ^ self].
	self isEmpty ifTrue: [aStream nextPut: $.. ^ self].
	
	(1 to: self size)
			do: [:index | aStream nextPutAll: (self at: index)]
			separatedBy: [aStream nextPut: aCharacter]