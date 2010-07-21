accessing
object
	^ decodeClass new loadFrom: (ReadStream on: unpackedBytes)