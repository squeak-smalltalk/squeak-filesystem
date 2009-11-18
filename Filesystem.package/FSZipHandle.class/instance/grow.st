private
grow
	| grown |
	grown := bytes class new: self newSize.
	grown replaceFrom: 1 to: bytes size with: bytes.
	bytes := grown