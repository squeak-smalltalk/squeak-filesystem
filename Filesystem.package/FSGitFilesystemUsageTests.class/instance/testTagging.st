commit tests
testTagging
	| ref |
	self commit: 'a commit' andTag: 'my first tag'.
	ref := basicRepository baseDir resolve: 'refs/tags/my first tag'.
	self assert: ref exists.
	self assert: ref basename = 'my first tag'.
	self assert: (basicRepository objectNamed: ref readStream contents asString) message = 'a commit'