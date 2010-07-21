as yet unclassified
validate
	tree ifNil: [self error: 'Cannot have a commit without a tree.'].
	tree species = GitTree ifFalse: [self error: 'Commit needs to hold an instance of a GitTree.'].
	author ifNil: [self error: 'Author identity is required.'].
	committer ifNil: [self error: 'Committer identity is required.'].
	super validate.