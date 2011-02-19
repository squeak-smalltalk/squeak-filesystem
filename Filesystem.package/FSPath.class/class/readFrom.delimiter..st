instance creation
readFrom: aStream delimiter: aCharacter 
	"Return a path composed of several elements identified by a delimiter character. "
	| elements out ch |
	elements := OrderedCollection new.
	out := (String new: 10) writeStream.
	[ aStream atEnd ] whileFalse: 
		[ ch := aStream next.
		ch = aCharacter 
			ifFalse: [ out nextPut: ch ]
			ifTrue: 
				[ elements add: out contents.
				out := (String new: 10) writeStream ] ].
	elements add: out contents.
	^ FSPath withAll: (self canonicalizeElements: elements)