accessing
branches
	| headsRef branches |
	branches := OrderedCollection new.
	headsRef := self baseDir resolve: 'refs/heads'.
	headsRef children do: [ :each |
		each readStreamDo: [ :stream |
			branches add: (self objectNamed: stream contents asString) ] ].
	^ branches