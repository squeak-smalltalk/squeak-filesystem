private
growTo: anInteger
	| grown |
	grown := bytes class new: anInteger + self sizeIncrement.
	grown 
		replaceFrom: 1
		to: bytes size
		with: bytes.
	bytes := grown