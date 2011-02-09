streams
writeStreamOn: aStringOrPath
	"Open a reading write on the file referred by the argument. It can be a string or a path"
	
	^ (self open: aStringOrPath writable: true) writeStream.