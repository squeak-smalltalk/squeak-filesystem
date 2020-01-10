streams
readStream
	"Return a FSReadStream on myself. 
	Not this does not create a new file"
	^ filesystem readStreamOn: path