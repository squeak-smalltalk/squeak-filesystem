accessing
tags
	| tagsRef referencedObjects tags |
	tagsRef := self baseDir resolve: 'refs/tags'.
	referencedObjects := Dictionary new.
	tagsRef children do: [ :ref |
		ref readStreamDo: [ :stream |
			referencedObjects 
				at: ref basename
				put: (self objectNamed: stream contents asString) ] ].

	tags := OrderedCollection new.
	referencedObjects associationsDo: [ :assoc |
		assoc value species = GitCommit
			ifTrue: [ 
				tags add: (GitTag new
					name: assoc key;
					object: assoc value;
					tagger: assoc value committer;
					yourself) ]
			ifFalse: [ tags add: assoc value ] ].
	^ tags