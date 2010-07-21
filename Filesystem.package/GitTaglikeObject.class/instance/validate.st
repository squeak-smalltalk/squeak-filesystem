as yet unclassified
validate
	"Override in subclasses to provide pre-save validation checks.
	Don't forget to call super validate, though!"
	message ifNil: [self error: 'Message is required.'].