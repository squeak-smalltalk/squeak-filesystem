private
byteSignatureFor: aGitObject
	| stream |
	stream := GitStream new.
	"format for object hash (see manual -> 'Object storage format'):
	<ascii type without space> + <space> + <ascii decimal size> + <byte\0> + <binary object data>"
	stream
		nextPutAll: aGitObject typeCode;
		space;
		nextPutAll: aGitObject byteData size asString; "ASCII value for $0 is not 0 but 48!"
		nullByte;
		nextPutAll: aGitObject byteData.
	^stream contents