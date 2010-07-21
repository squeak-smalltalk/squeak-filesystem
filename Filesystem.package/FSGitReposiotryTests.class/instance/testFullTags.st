tests
testFullTags
	| commit fullTag tags |
	commit := basicRepository objectWithSignature: (basicRepository resolveRef: 'refs/heads/branch1').
	fullTag := [ [ GitTag
		makeTagNamed: 'version 4.3alpha'
		for: commit
		message: 'PGP encrypted string'
		in: basicRepository ] 
			on: GitStampNameRequest 
			do: [ :req | req resume: 'Homer Simpson' ] ]
				on: GitStampEmailRequest
				do: [ :req | req resume: 'homer@nuke.com' ].
			
	tags := repository tags.
	self assert: tags size = 1.
	self assert: tags first species = GitFS.
	self assert: (tags first instVarNamed: 'revision') = commit